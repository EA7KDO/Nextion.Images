#!/bin/bash

##############################################################
# Support for Nextion Screen to create basic wpa_supplicant  #
# file in Nextion_Support directory.                         #
#                                                            #
# $1 is ssid and $2 is pre-shared key.                       #
# If $1 does not exist then will return hostname for AP mode #
# If $2 does not exist then will return default raspberry    #
#                                                            #
# KF6S                                            06-04-2019 #
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

sudo cat >/usr/local/etc/Nextion_Support/wpa_supplicant.conf <<EOL
network={
ssid="${ssid}"
psk="${psk}"
priority=1
}
EOL
