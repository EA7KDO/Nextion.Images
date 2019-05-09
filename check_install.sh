#!/bin/bash
#########################################################
#  Nextion Support for Nextion screen. Used to check    #
#  if files were installed correctly using Git button   #
#                                                       #
#  KF6S                                     05-01-2019  #
#########################################################

clear
echo
echo
echo "Check if files are properly installed to support the Nextion Display"
echo
echo
echo "Show Firewall Rule for 5040 if it exists:"
sudo iptables -S | grep --color "5040"
echo
echo
echo "List files in /usr/local/etc/Nextion_Support"
sudo ls -l --color /usr/local/etc/Nextion_Support
echo
echo
echo "Check tft file in /usr/local/etc/"
sudo ls -l --color /usr/local/etc/NX????????.tft | grep --color "NX"
echo
echo
echo "Check to see if ipv4.fw file was copied to /root"
sudo ls -l --color /root/ipv4.fw | grep --color "ipv4.fw"
echo
echo
echo "See if Nextion.Images existes, it will be deleted from tmp after a re-boot"
sudo ls -l --color /tmp/Nextion.Images
