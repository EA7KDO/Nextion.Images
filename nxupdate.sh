#!/bin/bash
#############################################################
#  Support for Nextion screen, update pistar and install    #
#  BC. BC is used to offload caculatons from trying to do   #
#  them in the display. Script can also be used to install  #
#  other programs by addding them here.                     # 
#  KF6S                                         04-10-2019  #
#############################################################
set -o errexit
set -o pipefail

#Run Pistar update script before adding BC
sudo pistar-update
# set to R/W becuase pi-star update will try and set R/O
sudo mount -o remount,rw /
#Update files needed for new Nextion functions
sudo apt-get install bc
# Check and Remove Nextion_Temp if it exists
sudo rm -f -r /home/pi-star/Nextion_Temp
# Check and Remove usr/local/etc/NX4832K035.tft if it exists
sudo rm -f /usr/local/etc/NX4832K035.tft
sudo rm -f /usr/local/etc/NX3224K024.tft
#set to R/O when finished
sudo mount -o remount,ro /;

