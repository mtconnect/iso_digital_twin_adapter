import paho.mqtt.client as mqtt
import json,time
from threading import Thread
from telnetlib import Telnet

def on_connect(client, userdata, flags, rc):
    print ("Connected with result code: " + str(rc))

def test_shdr_output():
    tl = Telnet('localhost',7879)
    time.sleep(2)
    print(tl.read_very_eager())

false=False
true=True
test_msg={    "lisaMessage" : {       "messageBody" : {          "data" : "{\"projectRelease\":\"emp\",\"productID\":\"emptiness\",\"featureName\":\"empty\",\"toolClass\":\"blobflob\",\"workingStepName\":\"empty\",\"workingStepDescription\":\"empty\",\"programVersion\":\"empty\",\"endofcycle\":\"Aug 17,2018 11:05:56\",\"projectStatus\":\"empty\",\"workingStepType\":\"empty\",\"toolID\":\"empty\",\"productVersion\":\"empty\",\"toolDescription\":\"empty\",\"featureType\":\"empty\",\"workingStepID\":\"empty\",\"operationID\":\"empty\",\"operationType\":\"empty\",\"startofcycle\":\"Aug 17,2018 11:05:51\",\"projectID\":\"empty\",\"programID\":\"Boxy_3-Axis_Machining_Setup_2.stpnc\",\"featureID\":\"empty\",\"toolName\":\"empty\"}",          "type" : "HermleSTEPVariables"       },       "messageHeader" : {          "handshakeConfirmation" : false,          "timeStamp" : 1534496756037       }    } }

client= mqtt.Client()
client.on_connect = on_connect

client.connect("mqtt.eclipse.org", 1883, 600)
client.subscribe("HermleSTEPVariables")

client.publish("HermleSTEPVariables", json.dumps(test_msg))

loop_forever = Thread(target = client.loop_forever)
loop_forever.start()

time.sleep(2)
test_shdr_output()
