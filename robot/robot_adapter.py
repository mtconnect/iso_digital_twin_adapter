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
    def __init__(self, path, root, bindings):
        self._path = path
        self._node = None
        self.connect(root, bindings)

    def connect(self, root, bindings):
        self._node = resolve_path(root, self._path, bindings)
        if self._node is not None:
            self._browse_name = self._node.get_browse_name().Name            
        
    def each(self, function):
        for n in self._node.get_children():
            function(n)

    def get_node(self):
        return self._node

class Variable(Node):
    def __init__(self, name, path, root, bindings):
        super().__init__(path, root, bindings)
        self._value = None
        self.name = name

    def get_value(self):
        if self._node is not None:
            self._value = self._node.get_value()
        return self._value

    def value(self):
        return self._value
        
class MappedDataItem(DataItem):
    def __init__(self, name, variable):
        super().__init__(name)
        self._variable = variable

    def gather(self):
        self.set_value(self._variable.value())
    

class MappedTransform(DataItem):
    def __init__(self, name, transformation):
        super().__init__(name)
        self._transformation = transformation

    def gather(self):
        self.set_value(self._transformation())

class MappedEnumeration(DataItem):
    def __init__(self, name, variable, translation):
        super().__init__(name)
        self._variable = variable
        self._translation = translation

    def gather(self):
        v = self._variable.value()
        if v is None:
            self.unavailable()
        else:
            if v in self._translation:
                self.set_value(self._translation[v])
            elif 'default' in self._translation:                
                self.set_value(self._translation['default'])
            else:
                self.unavailable()
                
class Robot(object):
    def __init__(self, adapter, name, number, root, bindings):
        self._adapter = adapter
        self._number = number
        self._root = root
        self._bindings = dict(bindings)
        self._bindings["number"] = number
        self._name = name
        self._variables = { }

        avail = Event(f'{name}:avail')
        adapter.add_data_item(avail)

        print(f"Binding variables for robot {name} #{number}")
        self._abb_root = resolve_path(root, "0:Objects/{abbc}:IRC5/{abbc}:rob{number}", self._bindings)
        self._ua_root = resolve_path(root, "0:Objects/{di}:DeviceSet/{di}:rob{number}", self._bindings)

        self.add_abb_variables()
        self.add_axes_angles()
        self.add_controller_variables()
        
        self.add_estop()
        self.add_execution()
        self.add_controller_mode()
        self.add_robot_module()

        avail.set_value('AVAILABLE')

    
    def add_variable(self, name, path, root = None):
        v = Variable(name, path, root, self._bindings)
        self._variables[name] = v
        return v

    def add_event(self, name, path, root = None):
        v = self.add_variable(name, path, root = root)
        di = MappedDataItem(f'{self._name}:{name}', v)
        self._adapter.add_data_item(di)

    def add_sample(self, name, path, root = None):
        self.add_event(name, path, root)


    def add_estop(self):
        di = MappedEnumeration(f"{self._name}:estop", self._variables["ControllerState"], {
            7: None,
            4: 'TRIGGERED',
            'default': 'ARMED'
            })
                               
        self._adapter.add_data_item(di)

    def add_controller_mode(self):
        di = MappedEnumeration(f"{self._name}:controller_mode", self._variables['OperatingMode'], {
            6: None,
            0: 'AUTOMATIC', 4: 'AUTOMATIC',
            2: 'MANUAL', 3: 'MANUAL', 5: 'MANUAL'            
            })
        self._adapter.add_data_item(di)
        
                        
    def add_execution(self):
        di = MappedEnumeration(f"{self._name}:execution", self._variables["ControllerExecutionState"], {
            0: None,
            1: 'ACTIVE',
            2: 'READY'
            })
        self._adapter.add_data_item(di)

    def create_process_data_items(self, node):
        self.add_event('WorkingPlanUUID', '{abbc}:workingPlanUUID', node)
        self.add_variable('FeatureName', '{abbc}:AP238_FEATURE_NAME', node)
        self.add_variable('FeatureUUID', '{abbc}:AP238_FEATURE_UUID', node)
        self.add_variable('WorkingstepName', '{abbc}:AP238_WORKINGSTEP_NAME', node)
        self.add_variable('WorkingstepUUID', '{abbc}:AP238_WORKINGSTEP_UUID', node)

        def working_step():
            uuid = self.value('WorkingstepUUID')
            name = self.value('WorkingstepName')
            if not uuid:
                return None
            else:
                return f"UUID='{uuid}' NAME='{name}'"
        
        di = MappedTransform(f'{self._name}:WorkingStep', working_step)
        self._adapter.add_data_item(di)

        def feature():
            uuid = self.value('FeatureUUID')
            name = self.value('FeatureName')
            if not uuid:
                return None
            else:
                return f"UUID='{uuid}' NAME='{name}'"
        
        di = MappedTransform(f'{self._name}:Feature', feature)
        self._adapter.add_data_item(di)


    def add_abb_variables(self):
        # ABB Specific Model
        self.add_variable("SystemID", "{abbc}:SystemID", root = self._abb_root)
        self.add_variable("OperatingMode", "{abbc}:OperatingMode", root = self._abb_root)
        self.add_variable("ControllerState", "{abbc}:ControllerState", self._abb_root)
        self.add_variable("ControllerExecutionState", "{abbc}:ControllerExecutionState", self._abb_root)
        self.add_event("SpeedRatio", "{abbc}:SpeedRatio", self._abb_root)
        self.add_variable("DrillTool", "{abbc}:RAPID/{abbc}:T_ROB1/{abbc}:Tools/{abbc}:DrillTool", self._abb_root)
        self.add_variable("TaskState", "{abbc}:RAPID/{abbc}:T_ROB1/{abbc}:TaskState", self._abb_root)
        self.add_variable("TaskExecutionState", "{abbc}:RAPID/{abbc}:T_ROB1/{abbc}:TaskExecutionState", self._abb_root)
        self.add_variable("IsDone", "{abbc}:IO_System/{abbc}:IO_Signals/{abbc}:IsDone", self._abb_root)


    def add_axes_angles(self):
        # Get the axes position from the UA section
        def create_position(root):
            name = f'{root.get_browse_name().Name}_angle'
            self.add_sample(name, '{di}:ParameterSet/{uar}:ActualPosition', root)

        axes = Node("{uar}:MotionDevices/{di}:ROB_1/{uar}:Axes", self._ua_root, self._bindings)
        axes.each(create_position)


    def add_controller_variables(self):
        # Get some of the UA controller stuff
        def add_controller_variables(root):
            self.add_variable("ExecutionMode", "{uar}:TaskControls/{di}:T_ROB1/{di}:ParameterSet/{uar}:ExecutionMode", root)
            self.add_variable("TaskProgramLoaded", "{uar}:TaskControls/{di}:T_ROB1/{di}:ParameterSet/{uar}:TaskProgramLoaded", root)
            self.add_event("TaskProgramName", "{uar}:TaskControls/{di}:T_ROB1/{di}:ParameterSet/{uar}:TaskProgramName", root)

        controllers = Node("{uar}:Controllers", self._ua_root, self._bindings)
        controllers.each(add_controller_variables)

    def add_robot_module(self):
        # Add AP238 data items
        def add_module(node):
            if node.get_browse_name().Name.endswith('Module'):
                self.create_process_data_items(node)
            
        rapid = Node("{abbc}:RAPID/{abbc}:T_ROB1", self._abb_root, self._bindings)
        rapid.each(add_module)
            
        
    def value(self, name):
        return self._variables[name].value()

    def variable(self, name):
        return self._variables[name]
                        
    def collect(self):
        for v in self._variables.values():
            v.get_value()
    

# Main 
        
logging.basicConfig(level=logging.WARN)
url = sys.argv[1]
if not url.startswith('opc.tcp'):
    url = f"opc.tcp://Default User:robotics@{url}:61510"

print(f"Connecting to OPC Server {url}")
client = Client(url)
client.set_security_string("Basic256Sha256,Sign,my_cert.der,my_private_key.pem")
adapter = None

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
                 "abbr": client.get_namespace_index("http://abb.com/UA/RoboticsCS/") #5
              }

    adapter = Adapter(('0.0.0.0', 7878))

    robots = [Robot(adapter, 'Stan', 1, root, bindings) ] 
#              Robot(adapter, 'Kyle', 2, root, bindings),
#              Robot(adapter, 'Kenny', 3, root, bindings),
#              Robot(adapter, 'Cartman', 4, root, bindings)]

    adapter.start()

    def gather_data(data_items):
        for d in data_items: d.gather()
    
    def gather_forever():
        while adapter.is_running():
            for r in robots: r.collect()
            adapter.gather(gather_data)
            time.sleep(0.100)

    gather_thread = threading.Thread(target = gather_forever)
    gather_thread.start()
    
    embed()
    
finally:
    if adapter: adapter.stop()
    client.disconnect()

