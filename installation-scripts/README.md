# Installation instructions
* Make the scripts executable
```bash 
sudo chmod a+x install*.sh 
```
*	Run the script install1.sh  `./install1.sh`

* Set the ROS development environment :
```bash 
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```
*	Run the script install2.sh `./install2.sh`

* Set the ROS workspace:
```bash 
echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
```
*	Run the script install3.sh `./install3.sh`

*	Restart your computer

**Important:** install4. sh should only be executed on the car. This file installs and configures the driver for the Kinect.
