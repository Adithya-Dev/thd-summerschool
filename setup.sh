#!/bin/sh
LIST_OF_APPS="
    code
    vim
    python3-dev
    python3-pip
    terminator
    git
    curl
    git
"

LIST_OF_SECOND_INSTALL_APPS="

"

sudo apt update

sudo apt install -y $LIST_OF_APPS

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt install ros-noetic-desktop-full

source /opt/ros/noetic/setup.bash

source ~/.bashrc

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

sudo rosdep init

rosdep update