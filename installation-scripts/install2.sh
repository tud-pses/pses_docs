#!/bin/bash

sudo apt-get -y install qtbase5-dev
cd $HOME/catkin_ws/src
catkin_init_workspace
cd $HOME/catkin_ws/
catkin_make
