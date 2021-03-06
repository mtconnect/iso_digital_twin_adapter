# Adapters for the AP238 Digital Twin Use Case Project

These adapters provide the connectivity between the data sources used for various devices in the projects to MTConnect. The robot adapter uses the python OPC UA server from ABB to harvest the data necessary to create the digital twin.

## Robot Adapter

### The python adapter

The adapter library is located in the `adapter` directory and provides an an abstraction around the MTConnect socket server to send data to an MTConnect agent. The agent can be found at (https://github.com/mtconnect/cppagent).

### The robot adapter

The robot python adapter is located in the `robot` subdirectory.

#### Installation Instructions

Install Python 3.8: Download from here: https://www.python.org/downloads/ and remember to check the box to add to path.

To install the dependencies necessary to run the adapter, execute the following command in the `robot` directory:

	pip install -r requirements.txt

To start the server, run the following command from the command line:

	python robot_adapter.py opc.tcp://<user>:<password>@<host>:61510

Where `<user>` is the user name in the "User ID" tab of the OPC Server. `<password>` Is the password from the same tab. And `<host>` is the name or IP address of the machine the OPC UA server is running on.

The default user name and password are: `Default User` and `robotics`. If the defaults are used, the adapter can be started as follows with only the `<host>`:

	python robot_adapter.py <host>
	
If the host is the local machine, invoke as follows:

	python robot_adapter.py 127.0.0.1

The configuration for the MTConnect Agent is in the `robot/agent` subdirectory and has all the Device.xml and configuration file to collect information from the local machine.

#### Trust the Certificate

The server requires certificates. I have checked in a personal private and public key pair for testing. The `generate` script uses openssh tools to create new certificates using the cert.config file. To customize it, change the `[ subject ]` section to match your identity.

On the OPC Server Configuration `Client Certificates` Tab, you need to select the certificate if it is in the `Rejected` section and click `Trust`.

## Download and Copy the MTConnect Agent to the `robot/agent` directory.

The agent configuration is in the `robot/agent` directory. You need to download the agent from: [Agent Releases](https://github.com/mtconnect/cppagent/releases) download and extract the agent from the zip file. The `agent.exe` is in the `bin` directory. Copy the file to the `robot/agent` directory and start the agent from the command line: `agent debug`

