#!/bin/bash

read -p "Script may take 30 minutes. Proceed? (y / n): " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# Part 1
sudo dpkg --configure -a
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install chromium-browser
sudo apt-get -y install gedit
sudo apt-get update
sudo apt-get -y install cutecom
sudo apt-get -y install git
sudo apt-get -y install openssh-server
sudo apt-get -y install at-spi2-core
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get -y install ros-melodic-desktop-full
sudo apt-get -y install python-rosinstall
mkdir -p $HOME/catkin_ws/src
sudo apt-get -y install --reinstall cmake
sudo usermod -a -G dialout $USER
# Part 2
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source /opt/ros/melodic/setup.bash
sudo rosdep init
rosdep update
cd $HOME/catkin_ws/src
catkin_init_workspace
cd $HOME/catkin_ws/
catkin_make
# Part 3
echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
source $HOME/catkin_ws/devel/setup.bash
sudo apt-get -y dist-upgrade
sudo apt-get -y install libgles2-mesa
cd $HOME/catkin_ws/src
rm CMakeLists.txt
git clone https://github.com/tud-pses/pses_ucbridge.git
git clone https://github.com/tud-pses/pses_simulation.git
git clone https://github.com/tud-pses/pses_dashboard.git
git clone https://github.com/tud-pses/serial.git
cd ..
rosdep install -y -r --from-paths .
catkin_make -DCMAKE_BUILD_TYPE="Release"
