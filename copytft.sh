#!/bin/bash
#########################################################
#  Nextion TFT Support for Nextion screen copy correct  #
#  file for user screen after Git Command.              #
#  KF6S                                     03-19-2019  #
#########################################################
# Use screen model from command $1
if [ -z "$1" ]; then
        exit
fi

model=$1
tft='.tft' gz='.gz'
#Put Pi-Star file system in RW mode
sudo mount -o remount,rw /
#Check to make sure that NO TFT file exists at the destination
rm /usr/local/etc/$model$tft
cp /tmp/Nextion.Images/$model$tft /usr/local/etc/$model$tft;

