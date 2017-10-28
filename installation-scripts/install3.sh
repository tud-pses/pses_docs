#!/bin/bash

sudo apt-get -y dist-upgrade
sudo apt-get -y install libgles2-mesa
cd $HOME/catkin_ws/src
rm CMakeLists.txt
git clone https://github.com/tud-pses/pses_ucbridge.git
git clone https://github.com/tud-pses/pses_simulation.git
git clone https://github.com/tud-pses/pses_dashboard.git
cd ..
rosdep install -y -r --from-paths .
sudo apt-get -y install ros-kinetic-serial
catkin_make -DCMAKE_BUILD_TYPE="Release"
