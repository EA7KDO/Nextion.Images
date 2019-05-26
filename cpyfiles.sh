#!/bin/bash
#########################################################
#  Nextion Support for Nextion screen. Used to copy     #
#  files from Nextion.Images to their proper location   #
#                                                       #
#  KF6S                                     05-01-2019  #
#########################################################

sudo mount -o remount,rw /
sudo mkdir /usr/local/etc/Nextion_Support
sudo cp /tmp/Nextion.Images/{*.sh,*.fw} /usr/local/etc/Nextion_Support
sudo chmod +x /usr/local/etc/Nextion_Support/*.sh
