import sys
import os
import logging
import time

from opcua import Client
from opcua import ua

import code

# To load the adapter module.
sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)), ".."))

from adapter.mtconnect_adapter import Adapter
from adapter.data_item import Event, SimpleCondition, Sample, ThreeDSample

def resolve_path(root, path, bindings):
    try:
        path_list = path.format(**bindings).split('/')
        print(path_list)
        return root.get_child(path_list)
    except:
        print(f"Could not resolve {path} as {path_list}: {sys.exc_info()[0]}")
    

class Enumeration(Event):
    def __init__(self, name, translation):
        super().__init__(self, name)
        self._translation = translation
        
    def set_value(self, value):
        return super().set_value(self, self._translation[value])                

class Mapping(object):
    Mappings = []
        
    def __init__(self, bindings, path, data_item, value_fun = lambda n: n.get_value()):
        data_item.set_name(data_item.name().format(**bindings))
        print(f"Creating mapping from {path} to {data_item.name()}")
        self._path = path
        self._bindings = bindings
        self._data_item = data_item
        self._value_fun = value_fun
        self._node = None
        
        Mapping.Mappings.append(self)
        
    def connect(self, root):
        self._node = resolve_path(root, self._path, self._bindings)
        
    def collect(self):
        self._data_item.set_value(value_fun(self._node.get_value()))
        
    def __repr__(self):
        return "{} -> {}".format(self._path, self._data_item.name())
        
class Collection(object):
    def __init__(self, name, path, apply):
        self._nodes = []
        self._name = name
        self._path = path
        self._apply = apply
        
    def create_mapping(self, node, bindings):
        child_bindings = dict(bindings)
        child_bindings[f"{self._name}_name"] = node.get_browse_name().Name
        mapping = self._apply(node, child_bindings)
        mapping.connect(node)
        
    def collect(self, root, bindings):
        node = resolve_path(root, self._path, bindings)
        children = node.get_children()
        for child in children:
            self._nodes.append(child)
            self.create_mapping(child, bindings)
        

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
        

class Robot(object):
    def add_variable(self, name, path, root = None):
        self._variables[name] = Variable(name, path, root=root, bindings=self._bindings)
        
    
    def __init__(self, number, root, bindings):
        self._number = number
        self._root = root
        self._bindings = dict(bindings)
        self._bindings["number"] = number
        self._abb_root = resolve_path(root, "0:Objects/{abbc}:IRC5/{abbc}:rob{number}", self._bindings)
        self._ua_root = resolve_path(root, "0:Objects/{di}:DeviceSet/{di}:rob{number}", self._bindings)

        self._variables = { }

        # ABB Specific Model
        self.add_variable("SystemID", "{abbc}:SystemID", root = self._abb_root)
        self.add_variable("ControllerState", "{abbc}:ControllerState", root=self._abb_root)
        self.add_variable("ControllerExecutionState", "{abbc}:ControllerExecutionState", root=self._abb_root)
        self.add_variable("SpeedRatio", "{abbc}:SpeedRatio", root=self._abb_root)
        self.add_variable("DrillTool", "{abbc}:RAPID/{abbc}:T_ROB{number}/{abbc}:Tools/{abbc}:DrillTool", root=self._abb_root)
        self.add_variable("TaskState", "{abbc}:RAPID/{abbc}:T_ROB{number}/{abbc}:TaskState", root=self._abb_root)
        self.add_variable("TaskExecutionState", "{abbc}:RAPID/{abbc}:T_ROB{number}/{abbc}:TaskExecutionState", root=self._abb_root)
        self.add_variable("IsDone", "{abbc}:IO_System/{abbc}:IO_Signals/{abbc}:IsDone", root=self._abb_root)

        # Get the axes position from the UA section
        axes = Node("{uar}:MotionDevices/{di}:ROB_{number}/{uar}:Axes")
        axes.connect(self._ua_root, self._bindings)

        def create_position(self, root):
            name = f'{root.get_browse_name().Name}_axis'
            self.add_variable(name, '{di}:ParameterSet/{uar}:ActualPosition', root=root)

        axes.each(lambda n: create_position(self, n))

        # Get some of the UA controller stuff
        controllers = Node("{uar}:Controllers")
        controllers.connect(self._ua_root, self._bindings)

        def add_controller_variables(self, root):
            self.add_variable("ExecutionMode", "{uar}:TaskControls/{di}:T_ROB{number}/{di}:ParameterSet/{uar}:ExecutionMode", root=root)
            self.add_variable("TaskProgramLoaded", "{uar}:TaskControls/{di}:T_ROB{number}/{di}:ParameterSet/{uar}:TaskProgramLoaded", root=root)
            self.add_variable("TaskProgramName", "{uar}:TaskControls/{di}:T_ROB{number}/{di}:ParameterSet/{uar}:TaskProgramName", root=root)

        controllers.each(lambda n: add_controller_variables(self, n))


        print(self._variables)

logging.basicConfig(level=logging.WARN)
client = Client("opc.tcp://robot:robotics@10.211.55.16:61510")
client.set_security_string("Basic256Sha256,Sign,my_cert.der,my_private_key.pem")
try:
    client.application_uri = "urn:mtconnect.org:MTConnect:MTConnect"
    client.secure_channel_timeout = 1000000
    client.session_timeout = 1000000
    client.connect()
    root = client.get_root_node()

    # Get the indexes of the various namespaces
    bindings = { "ua": 0,
                 "user": 1,
                 "di": client.get_namespace_index("http://opcfoundation.org/UA/DI/"), #3
                 "uar": client.get_namespace_index("http://opcfoundation.org/UA/Robotics/"), #4
                 "abbc": client.get_namespace_index("https://abb.com/Robotics/UA/Controller/"), #2
                 "abbr": client.get_namespace_index("http://abb.com/UA/RoboticsCS/"), #5
                 "number": 1
              }

    robot1 = Robot(1, root, bindings)
        
    embed()
    
finally:
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


