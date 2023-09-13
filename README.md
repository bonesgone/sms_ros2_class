# ROS Foxy Verification Script

This simple bash script verifies the installation and functionality of ROS Foxy on your system. It checks for the presence of ROS Foxy environment variables, tests the basic ROS 2 command 'ros2', and verifies the execution of a ROS 2 Gazebo package.

## Prerequisites

Before using this script, make sure you have the following prerequisites:

- ROS Foxy installed and sourced properly.
- Gazebo (if you plan to run the Gazebo verification step).

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/bonesgone/sms_ros2_class.git

2. Navigate to the repository directory.
3. Make the script executable:
    ```
    chmod +x my_script.sh 
    ```
4. Run the script.
    ```
    ./my_script.sh
    ```
The script will provide feedback on the status of your ROS Foxy installation.

### Troubleshooting

    If you encounter issues with the script, ensure that ROS Foxy is correctly installed and sourced.
    If you plan to run the Gazebo verification step, make sure you have installed 'ros-foxy-gazebo-ros-pkgs'.
