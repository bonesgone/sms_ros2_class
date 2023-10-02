This script does the following:

 *   Sources the ROS 2 environment.
 *   Opens multiple terminal windows using gnome-terminal.
 *   Starts the Turtlesim simulator.
 *   Controls the turtle's movement using velocity commands.
 *   Spawns a new turtle using a service call.
 *   Moves the new turtle in a square pattern using actions.
 *   Closes the terminal windows when the demonstration is complete.

Make sure to adapt this script to your specific ROS 2 installation and workspace paths as needed. You may need to modify the topic and service names or adjust the sleep times based on your system's performance.

# Screenshot

![image](https://github.com/bonesgone/sms_ros2_class/assets/64888324/1023486b-4c2f-4685-b0f6-0d975ed71a59)



## Nodes in ROS2

Each node in ROS should be responsible for a single, modular purpose, e.g. controlling the wheel motors or publishing the sensor data from a laser range-finder. Each node can send and receive data from other nodes via topics, services, actions, or parameters.

![image](https://github.com/bonesgone/sms_ros2_class/assets/64888324/feaddc02-f046-4d55-8f9e-d530e188fb5b)

