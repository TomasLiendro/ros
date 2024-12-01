#!/bin/bash
echo "Starting ROS launch..."
# Source ROS setup files
source /opt/ros/noetic/setup.bash
cd /workspace && catkin_make
source /workspace/devel/setup.bash
roslaunch ros_basics simple_chatter.launch
tail -f /dev/null  # Keeps the container alive
echo "Entrypoint completed"
