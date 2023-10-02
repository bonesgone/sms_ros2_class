#!/bin/bash

# Source your ROS 2 workspace setup (modify the path if needed)
source ~/ros2_ws/install/setup.bash

# Run the turtlesim_node (replace with your actual launch command)
ros2 launch turtlesim turtlesim_node.py &

# Wait for the node to start (adjust sleep duration if needed)
sleep 2

# Run rqt_console to view logs
rqt_console --logger-level WARN  # Adjust log level as needed

