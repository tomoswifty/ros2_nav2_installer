#!/bin/bash

UBUNTU_VER=$(lsb_release -sc)
ROS_VER=dashing
[ "$UBUNTU_VER" = "focal" ] && ROS_VER=foxy
[ "$UBUNTU_VER" = "jammy" ] && ROS_VER=humble

# update & upgrade
sudo apt update
sudo apt -y update

# ros2 navigation2のインストール
sudo apt -y install ros-${ROS_VER}-navigation2
sudo apt -y install ros-${ROS_VER}-nav2-bringup

# slam-toolboxのインストール
sudo apt -y install ros-${ROS_VER}-slam-toolbox

# teloopのインストール
sudo apt -y install ros-${ROS_VER}-teleop-tools

pip3 install matplotlib
pip3 install seaborn

# turtlebot3インストール
sudo apt -y install ros-${ROS_VER}-turtlebot3
sudo apt -y install ros-${ROS_VER}-turtlebot3-gazebo
sudo apt -y install ros-${ROS_VER}-turtlebot3-msgs
sudo apt -y install ros-${ROS_VER}-dynamixel-sdk

# rosserial のインストール
sudo apt install ros-noetic-rosserial-arduino
sudo apt install ros-noetic-rosserial

echo '***** Instalation Completed *****'
echo '*     Do source ~/.bashrc       *'
echo '***** ********************* *****'