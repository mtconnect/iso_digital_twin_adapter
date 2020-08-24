import paho.mqtt.client as mqtt
import json,time
from threading import Thread
from telnetlib import Telnet

def on_connect(client, userdata, flags, rc):
    print ("Connected with result code: " + str(rc))

def test_shdr_output():
    tl = Telnet('localhost',7878)
    time.sleep(2)
    print(tl.read_very_eager())

test_data = {"projectRelease":"empty","productID": "Boxy_3-Axis", "featureName":"empty","toolClass":"empty",
"workingStepName":"OP 3 Fine Milling Datum D, E, F and G", "workingStepDescription":"empty",
"programVersion":"empty","endofcycle":"empty","projectStatus":"empty", "workingStepType":"empty",
"toolID":"a410aecc-cdd0-4cc4-890e-cdbbca53ee40",
"productVersion":"empty","toolDescription":"empty","featureType":"empty",
"workingStepID":"empty","operationID":"empty","operationType":"empty",
"startofcycle":"2019-04-04 08:46:02.896","projectID":"empty",
"programID":"Boxy_3-Axis_Machining_Setup_1.stpnc",
"featureID":"empty","toolName":"empty"}

test_msg={   "lisaMessage" : {      "messageBody" : {         "data" : "{\"HermleSTEPVariables\":"+json.dumps(test_data)+"}",         "type" : "HermleSTEPVariables"      },      "messageHeader" : {         "handshakeConfirmation" : False,         "timeStamp" : 1595332636516      }   }}

broker="mqtt.eclipse.org"
client= mqtt.Client()
client.on_connect = on_connect

client.connect(broker, 1883, 600)
client.subscribe("HermleSTEPVariables")

client.publish("HermleSTEPVariables", json.dumps(test_msg))

loop_forever = Thread(target = client.loop_forever)
loop_forever.start()

time.sleep(2)
test_shdr_output()
