#!/bin/bash
##############################################################
# Support for Nextion Screen to create basic wpa_supplicant  #
# file in Nextion_Support directory.                         #
#                                                            #
# $1 is ssid and $2 is pre-shared key.                       #
# If $1 does not exist then will return hostname for AP mode #
# If $2 does not exist then will return default raspberry    #
#                                                            #
# KF6S                                            07-04-2019 #
##############################################################

if [ -z "$1" ]; then
ssid="$HOSTNAME"
else ssid=$1
fi

if [ -z "$2" ]; then
psk="raspberry"
else psk=$2
fi

##echo $ssid
##echo $psk

sudo mount -o remount,rw /
sleep 1s

sudo cat >/usr/local/etc/Nextion_Support/wpa_supplicant.conf <<EOL
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
ap_scan=1
fast_reauth=1
country=US

network={
        ssid="${ssid}"
        psk="${psk}"
        key_mgmt=WPA-PSK
        id_str="0"
        priority=100
        }
EOL

status=$?

if test $status -eq 0
then
        echo "Supplicant file was created! "
else
sudo mount -o remount,rw /
sleep 1s

sudo cat >/usr/local/etc/Nextion_Support/wpa_supplicant.conf <<EOL
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
ap_scan=1
fast_reauth=1
country=US

network={
        ssid="${ssid}"
        psk="${psk}"
        key_mgmt=WPA-PSK
        id_str="0"
        priority=100
        }
EOL

status=$?
if test $status -eq 0
then
echo "Supplicant file was created on second try!"
else
echo "Supplicant file was not created!"
fi
fi
