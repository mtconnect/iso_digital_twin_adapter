import sys
import logging
import time

from opcua import Client
from opcua import ua

import code

# To load the adapter module.
sys.path.append('..')

from adapter.mtconnect_adapter import Adapter
from adapter.data_item import Event, SimpleCondition, Sample, ThreeDSample

def resolve_path(root, path, bindings):
    path_list = path.format(**bindings).split('/')
    print(path_list)
    return root.get_child(path_list)

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
        
class Robot(object):
    def __init__(self, number, root, mappings):
        self._number = number
        self._root = root
        
        self._axes = "0:Objects/{di}:DeviceSet/{di}:rob{number}/{uar}:MotionDevices/{di}:ROB_{number}/{uar}:Axes"
        self._angle = "{di}:ParameterSet/{uar}:ActualPosition"


def embed():
    vars = globals()
    vars.update(locals())
    shell = code.InteractiveConsole(vars)
    shell.interact()


logging.basicConfig(level=logging.WARN)
client = Client("opc.tcp://robot:robotics@10.211.55.16:61510")
client.set_security_string("Basic256Sha256,Sign,my_cert.der,my_private_key.pem")
try:
    client.application_uri = "urn:mtconnect.org:MTConnect:MTConnect"
    client.secure_channel_timeout = 10000
    client.session_timeout = 10000
    client.connect()
    root = client.get_root_node()

    # Get the indexes of the various namespaces
    ua_core_uri = "http://opcfoundation.org/UA/" # 0
    ua_core_idx = client.get_namespace_index(ua_core_uri)

    user_idx = 1

    ua_di_uri = "http://opcfoundation.org/UA/DI/" # 3
    ua_di_idx = client.get_namespace_index(ua_di_uri)

    ua_robotics_uri = "http://opcfoundation.org/UA/Robotics/" # 4
    ua_robotics_idx = client.get_namespace_index(ua_robotics_uri)

    abb_robotics_uri = "https://abb.com/Robotics/UA/Controller/" # 2
    abb_robotics_idx = client.get_namespace_index(abb_robotics_uri)

    abb_roboticscs_uri = "http://abb.com/UA/RoboticsCS/" # 5
    abb_roboticscs_idx = client.get_namespace_index(abb_roboticscs_uri)
    
    bindings = { "ua": 0,
                 "user": 1,
                 "di": client.get_namespace_index("http://opcfoundation.org/UA/DI/"),
                 "uar": client.get_namespace_index("http://opcfoundation.org/UA/Robotics/"),
                 "aabc": client.get_namespace_index("https://abb.com/Robotics/UA/Controller/"),
                 "aabr": client.get_namespace_index("http://abb.com/UA/RoboticsCS/"),
                 "number": 1
              }

              
    axes_c = Collection("axis", "0:Objects/{di}:DeviceSet/{di}:rob{number}/{uar}:MotionDevices/{di}:ROB_{number}/{uar}:Axes", 
                        lambda node, bindings: Mapping(bindings, "{di}:ParameterSet/{uar}:ActualPosition", Sample("{axis_name}_angle")))
                        
    axes_c.collect(root, bindings)
    print(Mapping.Mappings)
    
    
#    axes = root.get_child(["0:Objects",
#                           "{}:DeviceSet".format(ua_di_idx),
#                           "{}:rob1".format(ua_di_idx),
#                           "{}:MotionDevices".format(ua_robotics_idx),
#                           "{}:ROB_1".format(ua_di_idx),
#                           "{}:Axes".format(ua_robotics_idx)])
#    print("Axes: ", axes)

#    angle_path = ["{}:ParameterSet".format(ua_di_idx), "{}:ActualPosition".format(ua_robotics_idx)]
#    joints = axes.get_children()
#    angles = list(map(lambda j: [j.get_browse_name().Name, j.get_child(angle_path)], joints))

    

#    running = True        
#    while(running):
#        print("---------------")
#        for angle in angles:
#            print("Joint ", angle[0], " angle: ", angle[1].get_value())
#        print("---------------")
#        time.sleep(0.5)
    
    
    embed()
    
finally:
    client.disconnect()
