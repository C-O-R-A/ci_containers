#!/usr/bin/env bash

set -e

sudo apt-get update
sudo apt-get install -y \
  python3-colcon-common-extensions \
  python3-rosdep \
  ros-jazzy-ros2-control \
  ros-jazzy-ros2-controllers \
  ros-jazzy-moveit \
  ros-jazzy-moveit-py \
  ros-jazzy-moveit-servo \
  ros-jazzy-moveit-visual-tools
sudo rosdep init || true
rosdep update
echo 'source /opt/ros/jazzy/setup.bash' >> ~/.bashrc
