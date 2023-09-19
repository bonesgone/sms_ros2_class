#!/bin/bash

# Ensure ROS 2 environment is sourced
source /opt/ros/foxy/setup.bash

# Start the Turtlesim simulator
gnome-terminal -- bash -c "ros2 run turtlesim turtlesim_node"

# Wait for Turtlesim to start
sleep 2

# Open a new terminal window for controlling the turtle
gnome-terminal -- bash -c "ros2 run turtlesim turtle_teleop_key"

# Wait for Turtlesim to start
sleep 2

# Publish velocity commands to control the turtle's movement
gnome-terminal -- bash -c "ros2 topic pub /turtle1/cmd_vel geometry_msgs/Twist '{linear: {x: 2.0}, angular: {z: 1.0}}'"

# Wait for a few seconds
sleep 5

# Stop the turtle by sending a zero velocity command
gnome-terminal -- bash -c "ros2 topic pub /turtle1/cmd_vel geometry_msgs/Twist '{linear: {x: 0.0}, angular: {z: 0.0}}'"

# Create a new turtle using a service call
gnome-terminal -- bash -c "ros2 service call /spawn turtlesim/srv/Spawn '{x: 5.0, y: 5.0, theta: 0.0, name: new_turtle}'"

# Wait for a few seconds
sleep 2

# Use actions to make the turtle move in a square pattern
gnome-terminal -- bash -c "ros2 action send_goal /new_turtle/distance turtlesim/action/MoveDistance '{distance: 3.0}'"
gnome-terminal -- bash -c "ros2 action send_goal /new_turtle/distance turtlesim/action/MoveDistance '{distance: 3.0}'"
gnome-terminal -- bash -c "ros2 action send_goal /new_turtle/distance turtlesim/action/MoveDistance '{distance: 3.0}'"
gnome-terminal -- bash -c "ros2 action send_goal /new_turtle/distance turtlesim/action/MoveDistance '{distance: 3.0}'"

# Wait for the action to complete
sleep 10

# Close the terminal windows
killall gnome-terminal

echo "ROS 2 Turtlesim demonstration completed."

