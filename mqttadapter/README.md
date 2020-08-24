# Adapters for the AP238 Digital Twin Use Case Project

## MQTT to SHDR Adapter

### The python adapter library

The adapter library is located in the `adapter` directory and provides an an abstraction around the MTConnect socket server to send data to an MTConnect agent. The agent can be found at (https://github.com/mtconnect/cppagent).

### The mqtt adapter

The MQTT python adapter is located in the `mqttadapter` subdirectory.

#### Installation Instructions

Install Python 3.8: Download from here: https://www.python.org/downloads/ and remember to check the box to add to path.

To install the dependencies necessary to run the adapter, execute the following command in the `mqttadapter` directory:

	pip install -r requirements.txt

Before starting up the MQTT Adapter Client, update the following information in `mqttadapter.py`

- Adapter Configuration (Host and Port) on line 145.

- MQTT Broker configuration on line 152 and 155.

To start the MQTT Adapter Client execute the following command:

	py mqttadapter.py

To test SHDR output update the configuration in `mqttpublisher_sim.py` to match that of MQTT Adapter Client.

- Adapter Configuration on line 10

- MQTT Broker Configuration on lines 29-32)

and then run the following command:

	py mqttpublisher_sim.py