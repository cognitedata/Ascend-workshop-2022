#!/bin/bash
# set -e
source /opt/ros/foxy/setup.bash
source /app/ros2_ws/install/setup.bash

echo "start turtlesim teleop"

ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args --remap /cmd_vel:=/turtle1/cmd_vel

# to run ouster driver
# ros2 launch ros2_ouster driver_launch.py