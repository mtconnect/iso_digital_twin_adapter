import sys
import os
import logging
import time
import threading

from opcua import Client
from opcua import ua

import code

# To load the adapter module.
sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)), ".."))

from adapter.mtconnect_adapter import Adapter
from adapter.data_item import DataItem, Event, SimpleCondition, Sample, ThreeDSample

def resolve_path(root, path, bindings):
    try:
        path_list = path.format(**bindings).split('/')
        print(path_list)
        return root.get_child(path_list)
    except:
        print(f"Could not resolve {path} as {path_list}: {sys.exc_info()[0]}")


def embed():
    vars = globals()
    vars.update(locals())
    shell = code.InteractiveConsole(vars)
    shell.interact()

class Node(object):
    def __init__(self, path):
        self._path = path
        self._node = None

    def connect(self, root, bindings):
        self._node = resolve_path(root, self._path, bindings)
        self._browse_name = self._node.get_browse_name().Name
        
    def each(self, function):
        for n in self._node.get_children():
            function(n)

    def get_node(self):
        return self._node

class Variable(Node):
    def __init__(self, name, path, root = None, bindings = None):
        super().__init__(path)
        self._value = None
        self.name = name

        if root is not None and bindings is not None:
            self.connect(root, bindings)

    def get_value(self):
        self._value = self._node.get_value()
        return self._value
        
class MappedDataItem(DataItem):
    def __init__(self, name, variable):
        super().__init__(name)
        self._variable = variable

    def collect(self):
        self.set_value(self._variable.get_value())
    

class MappedEnumeration(DataItem):
    def __init__(self, name, transformation):
        super().__init__(name)
        self._transformation = transformation

    def collect(self):
        self.set_value(self._transformation())

        
class Robot(object):
    def add_variable(self, name, path, root = None):
        v = Variable(name, path, root=root, bindings=self._bindings)
        self._variables[name] = v
        return v

    def add_event(self, name, path, root = None):
        v = self.add_variable(name, path, root = root)
        di = MappedDataItem(name, v)
        self._adapter.add_data_item(di)

    def add_sample(self, name, path, root = None):
        self.add_event(name, path, root)


    def add_estop(self):
        def emergency_stop():
            v = self._variables["ControllerState"].get_value()
            if v is None or v == 7:
                r = 'UNAVAILABLE'
            elif v == 4:
                r = 'TRIGGERED'
            else:
                r = 'ARMED'
            return r
        
        di = MappedEnumeration("estop", emergency_stop)
        self._adapter.add_data_item(di)

    def add_controller_mode(self):
        def mode():
            v = self._variables["OperatingMode"].get_value()
            if v is None or v == 6:
                r = 'UNAVAILABLE'
            elif v == 0 or v == 4:
                r = 'AUTOMATIC'
            elif v == 2 or v == 3 or v == 5:
                r = 'MANUAL'
            return r
            
        
        di = MappedEnumeration("controller_mode", mode)
        self._adapter.add_data_item(di)
        
                        
    def add_execution(self):
        def execution():
            v = self._variables["ControllerExecutionState"].get_value()
            if v is None or v == 0:
                r = 'UNAVAILABLE'
            elif v == 1:
                r = 'ACTIVE'
            elif v == 2:
                r = 'READY'
            return r
        
        di = MappedEnumeration("execution", execution)
        self._adapter.add_data_item(di)
                        
    
    def __init__(self, adapter, number, root, bindings):
        self._adapter = adapter
        self._number = number
        self._root = root
        self._bindings = dict(bindings)
        self._bindings["number"] = number
        self._abb_root = resolve_path(root, "0:Objects/{abbc}:IRC5/{abbc}:rob{number}", self._bindings)
        self._ua_root = resolve_path(root, "0:Objects/{di}:DeviceSet/{di}:rob{number}", self._bindings)

        self._variables = { }

        # ABB Specific Model
        self.add_variable("SystemID", "{abbc}:SystemID", root = self._abb_root)
        self.add_variable("OperatingMode", "{abbc}:OperatingMode", root = self._abb_root)
        self.add_variable("ControllerState", "{abbc}:ControllerState", root=self._abb_root)
        self.add_variable("ControllerExecutionState", "{abbc}:ControllerExecutionState", root=self._abb_root)
        self.add_event("SpeedRatio", "{abbc}:SpeedRatio", root=self._abb_root)
        self.add_variable("DrillTool", "{abbc}:RAPID/{abbc}:T_ROB{number}/{abbc}:Tools/{abbc}:DrillTool", root=self._abb_root)
        self.add_variable("TaskState", "{abbc}:RAPID/{abbc}:T_ROB{number}/{abbc}:TaskState", root=self._abb_root)
        self.add_variable("TaskExecutionState", "{abbc}:RAPID/{abbc}:T_ROB{number}/{abbc}:TaskExecutionState", root=self._abb_root)
        self.add_variable("IsDone", "{abbc}:IO_System/{abbc}:IO_Signals/{abbc}:IsDone", root=self._abb_root)

        # Get the axes position from the UA section
        axes = Node("{uar}:MotionDevices/{di}:ROB_{number}/{uar}:Axes")
        axes.connect(self._ua_root, self._bindings)

        def create_position(root):
            name = f'{root.get_browse_name().Name}_axis'
            self.add_sample(name, '{di}:ParameterSet/{uar}:ActualPosition', root=root)

        axes.each(lambda n: create_position(n))

        # Get some of the UA controller stuff
        controllers = Node("{uar}:Controllers")
        controllers.connect(self._ua_root, self._bindings)

        def add_controller_variables(root):
            self.add_variable("ExecutionMode", "{uar}:TaskControls/{di}:T_ROB{number}/{di}:ParameterSet/{uar}:ExecutionMode", root=root)
            self.add_variable("TaskProgramLoaded", "{uar}:TaskControls/{di}:T_ROB{number}/{di}:ParameterSet/{uar}:TaskProgramLoaded", root=root)
            self.add_event("TaskProgramName", "{uar}:TaskControls/{di}:T_ROB{number}/{di}:ParameterSet/{uar}:TaskProgramName", root=root)

        controllers.each(lambda n: add_controller_variables(n))

        self.add_estop()
        self.add_execution()
        self.add_controller_mode()

logging.basicConfig(level=logging.WARN)
client = Client("opc.tcp://robot:robotics@10.211.55.16:61510")
client.set_security_string("Basic256Sha256,Sign,my_cert.der,my_private_key.pem")
try:
    client.application_uri = "urn:mtconnect.org:MTConnect:MTConnect"
    client.secure_channel_timeout = 1000000
    client.session_timeout = 1000000
    client.connect()
    root = client.get_root_node()
    running = True

    # Get the indexes of the various namespaces
    bindings = { "ua": 0,
                 "user": 1,
                 "di": client.get_namespace_index("http://opcfoundation.org/UA/DI/"), #3
                 "uar": client.get_namespace_index("http://opcfoundation.org/UA/Robotics/"), #4
                 "abbc": client.get_namespace_index("https://abb.com/Robotics/UA/Controller/"), #2
                 "abbr": client.get_namespace_index("http://abb.com/UA/RoboticsCS/"), #5
                 "number": 1
              }

    adapter = Adapter(('0.0.0.0', 7878))
    
    robot1 = Robot(adapter, 1, root, bindings)

    adapter.start()

    def collect_data(data_items):
        for d in data_items:
            d.collect()

    def gather_forever():
        while adapter.is_running():
            adapter.gather(collect_data)
            time.sleep(0.100)

    gather_thread = threading.Thread(target = gather_forever)
    gather_thread.start()
    
    embed()
    
finally:
    adapter.stop()
    client.disconnect()


# ControllerExecutionStateEnum - Execution
  # 0 Unknown -> UNAVAILABLE
  # 1 Running -> ACTIVE
  # 2 Stopped -> READY

# Controler State Enum
  # 0 Initialize State
  # 1 Motors Off
  # 2 Motors On
  # 3 Guard Stop
  # 4 Emergency Stop
  # 5 Emergency Stop Reset
  # 6 System Failure
  # 7 Unknown

# DeviceHealthEnumeration
  # 0 Normal
  # 1 Failure
  # 2 Check Function
  # 3 Off Spec
  # 4 Maintenance Required

# Execution Mode -> Controller Mode
  # 0 Cycle -> AUTOMATIC w/ Single Cycle
  # 1 Continuous -> AUTOMATIC
  # 2 Step -> AUTOMATIC w/ Single Step

# Task Execution
  # 0 Ready
  # 1 Stopped
  # 2 Running
  # 3 Uninitialized
  # 4 Unknown

# Task State
  # 0 Empty
  # 1 Loaded
  # 2 Linked
  # 3 Initiated

# Operational Mode
  # 0 Other
  # 1 Manual reduced speed
  # 2 Manual high speed
  # 3 Automatic
  # 4 Automatic External

# Operating Mode
  # 0 Auto
  # 1 Init
  # 2 Manual Reduced Speed
  # 3 Manual Full Speed
  # 4 Auto Change
  # 5 Manual Full Speed Change
  # 6 N/A


