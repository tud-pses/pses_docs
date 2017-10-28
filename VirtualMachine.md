# PSES Virtual Machine

We offer a virtual machine if you desire to have a virtual machine of Lubuntu 16.04 and our development environment working out of the box. We deliver the virtual machine as an archive in the OVA format. We recommend to use [VirtualBox](https://www.virtualbox.org/wiki/Downloads) to import the VM but you can also use any virtualization software that supports the OVA format such as VMware.

## What is included?
* Lubuntu 16.04 LTS 64-Bit
* ROS-Kinetic
* ROS Catkin Workspace set in `~/catkin_ws/`
* [PSES UcBridge](https://github.com/tud-pses/pses_ucbridge/wiki)
* [PSES Simulation](https://github.com/tud-pses/pses_simulation/wiki)
* [PSES DashBoard](https://github.com/tud-pses/pses_dashboard/wiki)
* Qt Creator 5.9
* ROS Qt-Creator Plug-in 4.4 completely configured according to [this guide](http://ros-industrial.github.io/ros_qtc_plugin/_source/Setup-Qt-Creator-for-ROS.html)

## Download Link
Download: [PSES.OVA](https://drive.google.com/open?id=0BzuNzYIdFquYaDJEVDVSWWN2M3c)

Size: 4GB

## Default settings

|          Feature          |       Default Setting      |
|:-------------------------:|:--------------------------:|
|   Processor Architecture  |           64-Bit 	         |
|            RAM            |           3072MB           |
|            CPU            |           2 Cores          |
|            HDD            | 50GB dynamically allocated |
|        Video Memory       |            32MB            |
|          Network          |             NAT            |
|  Bidirectional Copy/Paste |             No             |
| Bidirectional Drag'n'Drop |             No             |
|            SSH            |             Yes            |
|            User           |            pses            |
|          Password         |           letmein          |
|                           |                            |

## Authors

* **Nicolas Acero**
* **Sebastian Ehmes** 