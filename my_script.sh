#!/bin/bash

# A simple script to verify the installation and functionality of ROS Foxy.

# Check if ROS Foxy environment variables are available
if [ -z "$ROS_DISTRO" ]; then
  echo "ROS Foxy environment variables are missing. Ensure ROS Foxy is 
correctly installed and sourced."
  exit 1
else
  echo "ROS Foxy environment variables are detected, indicating a 
successful installation and sourcing."
fi

# Check the functionality of fundamental ROS 2 command
if ! ros2 --help &>/dev/null; then
  echo "Basic ROS 2 command 'ros2' isn't functioning as expected."
  exit 1
else
  echo "Basic ROS 2 command 'ros2' is operational."
fi

# Verify the execution of a ROS2 Gazebo package (opening a demo world)
if ! gazebo --verbose /opt/ros/foxy/share/gazebo_plugins/worlds/gazebo_ros_diff_drive_demo.world &>/dev/null; then
  echo "The gazebo failed to launch. Review your ROS installation 
or consider installing 'ros-foxy-gazebo-ros-pkgs'."
  exit 1
else
  echo "The gazebo launched successfully."
fi

echo "ROS Foxy seems to be properly installed and functioning."

