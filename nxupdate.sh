#!/bin/bash
#Run Pi-Star update before adding BC
sudo pistar-update
# set to R/W becuase pi-star update will try and set R/O
sudo mount -o remount,rw /
#Update files needed for new Nextion functions
sudo apt-get install bc
#set to R/O when finished
sudo mount -o remount,ro /
