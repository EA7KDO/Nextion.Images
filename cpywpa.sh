#!/bin/bash
#########################################################
#  Nextion Support for Nextion screen. Used to copy     #
#  wpa_supplicant file to working location              #
#                                                       #
#  KF6S                                     05-01-2019  #
#########################################################

sudo mount -o remount,rw /boot
sleep 1s
sudo cp /usr/local/etc/Nextion_Support/wpa_supplicant.conf /boot/wpa_supplicant.conf
status=$?

if test $status -eq 0
then
        echo "Supplicant copy OK!"

else
        sudo mount -o remount,rw /
        sleep 1s
        sudo cp /usr/local/etc/Nextion_Support/wpa_supplicant.conf /boot/wpa_supplicant
        status-$?
        if test $status -eq 0
        then
        echo "Second attempt to copy Supplicant OK!"
        else
        echo "Second attempt to copy Supplicant failed!"
        fi
fi
sudo mount -o remount,ro /boot;
