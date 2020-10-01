import paho.mqtt.client as mqtt
import sys,os, time
from threading import Thread
from json import loads, dumps
from datetime import datetime

sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)), ".."))
from adapter.mtconnect_adapter import Adapter
from adapter.data_item import DataItem, Event, SimpleCondition, Sample, ThreeDSample

class MappedDataItem(DataItem):
    def __init__(self, name, variable):
        super().__init__(name)
        self._variable = variable

    def gather(self):
        self.set_value(self._variable.get_value())

class MappedDataSet(DataItem):
    def __init__(self, name, datasets):
        super().__init__(name)
        self._variable = DataSetVariable(datasets)

    def gather(self):
        self.set_value(self._variable.get_value())

class Variable:
    def __init__(self):
        self._value = None

    def get_value(self):
        return self._value

    def set_value(self, value):
        self._value = value

class DataSetVariable:
    def __init__(self, dataset):
        self._value = None
        self._dataset = dataset
        self._reset = False
        self._name = str()

    def get_value(self):
        value = str()
        for key, val in self._dataset.items():
            if key == 'NAME':
                if self._name and str(val.get_value()) != self._name:
                    self._reset = True
                self._name = str(val.get_value())
            if val.get_value() is not None:
                value += str(key)+"={'"+str(val.get_value())+"'}"
        value = value.replace("}"," ")[:-1].replace("{","")

        if self._reset:
            value = ":MANUAL " + value
            self._reset = False

        self.reset_values()
        return value if value else None

    def reset_values(self):
        for key, val in self._dataset.items():
            if key != "NAME":
                self._dataset[key].set_value(None)

    def set_value(self, value):
        self._value = value


class Device:
    def __init__(self,host,port):
        self._dataitems = dict()
        self._datasets = dict()
        self._mapped_variables = dict()
        self._adapter = Adapter((host,port))

        self._adapter.start()
        self.create_dataitems()

    def create_dataitems(self):

        """Already defined in Hermle MTConnect Adapter"""
        #self.add_dataitem("AVAILABILITY","avail")
        #self._mapped_variables["avail"].set_value("AVAILABLE")
        #self.add_dataitem("TOOL_ASSET_ID","toolID")
        #self.add_dataitem("PROGRAM","programID")

        """Add STEP dataitems"""
        #Arguments:: (MTCONNECT_DATAITEM_TYPE, MTCONNECT_DATAITEM_NAME, NATIVE_MQTT_NAME)

        self.add_dataitem("PROGRAM_COMMENT","programcomment_1","programVersion")
        #self.add_dataitem("PROGRAM","program_1","programID")

        #Arguments:: (MTCONNECT_DATAITEM_TYPE, MTCONNECT_DATAITEM_NAME, MTCONNECT_ENTRY_NAME, NATIVE_MQTT_NAME)
        self.add_dataset("FEATURE","Feature", "UUID", "featureID")
        self.add_dataset("FEATURE","Feature", "NAME", "featureName")
        self.add_dataset("FEATURE","Feature", "FEATURE_TYPE", "featureType")
        #self.add_dataset("FEATURE","Feature", "FEATURE_DESCRIPTION", "featureDescription")

        self.add_dataset("OPERATION","Operation", "UUID", "operationID")
        self.add_dataset("OPERATION","Operation", "OPERATION_TYPE", "operationType")

        self.add_dataset("PRODUCT","Product", "ID", "productID")
        #self.add_dataset("PRODUCT","Product", "UUID", "productUuid")
        #self.add_dataset("PRODUCT","Product", "NAME", "productName")
        self.add_dataset("PRODUCT","Product", "VERSION", "productVersion")

        self.add_dataset("PROJECT","Project", "ID", "programID")
        #self.add_dataset("PROJECT","Project", "UUID", "projectUuid")
        self.add_dataset("PROJECT","Project", "RELEASE", "projectRelease")
        self.add_dataset("PROJECT","Project", "STATUS", "projectStatus")

        self.add_dataset("TOOL","Tool", "CLASS", "toolClass")
        self.add_dataset("TOOL","Tool", "DESCRIPTION", "toolDescription")
        self.add_dataset("TOOL","Tool", "NAME", "toolName")
        self.add_dataset("TOOL","Tool", "ID", "toolID")
        #self.add_dataset("TOOL","Tool", "UUID", "toolUuid")

        self.add_dataset("WORKING_STEP","WorkingStep", "UUID", "workingStepID")
        self.add_dataset("WORKING_STEP","WorkingStep", "NAME", "workingStepName")
        self.add_dataset("WORKING_STEP","WorkingStep", "WORKING_STEP_TYPE", "workingStepType")
        self.add_dataset("WORKING_STEP","WorkingStep", "DESCRIPTION", "workingStepDescription")
        self.add_dataset("WORKING_STEP","WorkingStep", "START_TIME","startofcycle")
        self.add_dataset("WORKING_STEP","WorkingStep", "END_TIME","endofcycle")
        

    def add_dataitem(self, dataitem_type, dataitem_name, native_name):
        self._mapped_variables[native_name] = Variable()
        self._dataitems[dataitem_name] = MappedDataItem(dataitem_name, self._mapped_variables[native_name])
        self._adapter.add_data_item(self._dataitems[dataitem_name])

    def add_dataset(self, dataitem_type, dataitem_name, entry_name, native_name):
        if dataitem_name not in self._datasets:
            self._datasets[dataitem_name] = dict()

        if dataitem_name not in self._dataitems:
            self._dataitems[dataitem_name] = MappedDataSet(dataitem_name, self._datasets[dataitem_name])
            self._adapter.add_data_item(self._dataitems[dataitem_name])

        self._mapped_variables[native_name] = Variable()
        self._datasets[dataitem_name][entry_name] = self._mapped_variables[native_name]

    def update_values(self, dataitems):
        for key,val in dataitems.items():
            val = None if val == "empty" else val
            self._mapped_variables[key].set_value(val) if key in self._mapped_variables else str()

        self.gather_data()

    def on_mqttmsg_arrival(self, client, userdata, msg):
        false = False #handshake_var
        true = True #handshake_var
        msg_json = loads(msg.payload)
        timestamp_unix_milsec = msg_json['lisaMessage']['messageHeader']['timeStamp']
        timestamp_utc = datetime.utcfromtimestamp(int(int(timestamp_unix_milsec)/1000)).strftime('%Y-%m-%dT%H:%M:%SZ')
        data_json = loads(msg_json['lisaMessage']['messageBody']['data'])
        dataitems = data_json

        self.update_values(dataitems)

    def gather_data(self):
        self._adapter.begin_gather()

        for dataitem_key, dataitem_val in self._dataitems.items():
            dataitem_val.gather()

        self._adapter.complete_gather()


    
def on_connect(client, userdata, flags, rc):
    print ("Connected with result code: " + str(rc))

def on_disconnect(client, userdata, rc):
    if rc != 0:
        print("Unexpected disconnection with result code: "+str(rc))
    else:
        print("Disconnected Successfully!")

if __name__ == '__main__':

    #Device(host,port): host and port must be configured into the agent cfg file.
    device1 = Device('localhost',7879)

    client= mqtt.Client()
    client.on_connect = on_connect
    client.on_disconnect = on_disconnect
    client.on_message = device1.on_mqttmsg_arrival

    #connect(host, port=1883, keepalive=60, bind_address="")
    client.connect("mqtt.eclipse.org", 1883, 600)

    #subscribed topic must be the same as published topic by the device controller
    client.subscribe("HermleSTEPVariables")

    loop_forever = Thread(target = client.loop_forever)
    loop_forever.start()
