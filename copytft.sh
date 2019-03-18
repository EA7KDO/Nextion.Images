#!/bin/bash
#########################################################
#  Nextion TFT Support for Nextion screen Git Command   #
#                                                       #
#                   (c)2019 by KF6S                     #
#                                                       #
#                                                       #
#                        V0.10                          #
#                                                       #
#########################################################
# Set Nextion screen model
model=$(cat /var/log/syslog | grep -m 1 'display model' | awk '{print substr($9,1,10)}')
echo $model
tft='.tft' gz='.gz'
#Check to make sure that NO TFT file exists at the destination
rm /usr/local/etc/$model$tft
cp /tmp/Nextion.Images/$model$tft /usr/local/etc/$model$tft > msg
echo "Ready to flash screen..."



