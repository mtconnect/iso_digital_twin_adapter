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
        self._value = "UNAVAILABLE"

    def get_value(self):
        return self._value

    def set_value(self, value):
        self._value = value

class DataSetVariable:
    def __init__(self, datasets):
        self._value = "UNAVAILABLE"
        self._datasets = datasets

    def get_value(self):
        value = str()
        for dataset, val in self._datasets.items():
            if val.get_value() not in [None, "UNAVAILABLE"]:
                value += str(dataset)+"={'"+str(val.get_value())+"'}"
        value = value.replace("}"," ")[:-1].replace("{","")

        if value: self._value = value
        return self._value

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
        self.add_dataitem("START_OF_CYCLE","startofcycle_1","startofcycle")
        self.add_dataitem("END_OF_CYCLE","endofcycle_1","endofcycle")

        self.add_dataitem("PROGRAM_COMMENT","programcomment_1","programVersion")

        #Arguments:: (MTCONNECT_DATAITEM_TYPE, MTCONNECT_DATAITEM_NAME, MTCONNECT_ENTRY_NAME, NATIVE_MQTT_NAME)
        self.add_dataset("FEATURE","Feature", "UUID", "featureID")
        self.add_dataset("FEATURE","Feature", "NAME", "featureName")
        self.add_dataset("FEATURE","Feature", "FEATURE_TYPE", "featureType")

        self.add_dataset("OPERATION","Operation", "UUID", "operationID")
        self.add_dataset("OPERATION","Operation", "OPERATION_TYPE", "operationType")

        self.add_dataset("PRODUCT","Product", "UUID", "productID")
        self.add_dataset("PRODUCT","Product", "VERSION", "productVersion")

        self.add_dataset("PROJECT","Project", "UUID", "projectID")
        self.add_dataset("PROJECT","Project", "RELEASE", "projectRelease")
        self.add_dataset("PROJECT","Project", "STATUS", "projectStatus")

        self.add_dataset("TOOL","Tool", "CLASS", "toolClass")
        self.add_dataset("TOOL","Tool", "DESCRIPTION", "toolDescription")
        self.add_dataset("TOOL","Tool", "NAME", "toolName")

        self.add_dataset("WORKING_STEP","WorkingStep", "UUID", "workingStepID")
        self.add_dataset("WORKING_STEP","WorkingStep", "NAME", "workingStepName")
        self.add_dataset("WORKING_STEP","WorkingStep", "WORKING_STEP_TYPE", "workingStepType")
        self.add_dataset("WORKING_STEP","WorkingStep", "DESCRIPTION", "workingStepDescription")

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
            val = "UNAVAILABLE" if val == "empty" else val
            self._mapped_variables[key].set_value(val) if key in self._mapped_variables else str()

        self.gather_data()

    def on_mqttmsg_arrival(self, client, userdata, msg):
        msg_json = loads(msg.payload)
        timestamp_unix_milsec = msg_json['lisaMessage']['messageHeader']['timeStamp']
        timestamp_utc = datetime.utcfromtimestamp(int(int(timestamp_unix_milsec)/1000)).strftime('%Y-%m-%dT%H:%M:%SZ')
        data_json = loads(msg_json['lisaMessage']['messageBody']['data'])
        dataitems = data_json['HermleSTEPVariables']

        self.update_values(dataitems)

    def gather_data(self):
        for dataitem_key, dataitem_val in self._dataitems.items():
            dataitem_val.gather()
        time.sleep(0.5)

    
def on_connect(client, userdata, flags, rc):
    print ("Connected with result code: " + str(rc))


if __name__ == '__main__':

    #Device(host,port): host and port must be configured into the device file.
    device1 = Device('localhost',7878)

    client= mqtt.Client()
    client.on_connect = on_connect
    client.on_message = device1.on_mqttmsg_arrival

    #connect(host, port=1883, keepalive=60, bind_address="")
    client.connect("mqtt.eclipse.org", 1883, 600)

    #subscribed topic must be the same as published topic by the device controller
    client.subscribe("HermleSTEPVariables")

    loop_forever = Thread(target = client.loop_forever)
    loop_forever.start()
