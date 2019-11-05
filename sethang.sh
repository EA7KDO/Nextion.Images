#!/bin/bash
####################################################################
#  Change ModeHang in /etc/mmdvmhost                               #
#  $1 1-10 Select Mode/Network to change     $2 new nethang value  #
#                                                                  #
#  KF6S                                                 11-04-2019 #
####################################################################
set -o errexit
set -o pipefail

# Set value in $2 for Mode/Network

if [ -z "$1" ]; then
        exit
        else
        if [ "$1" = 1 ]; then sudo sed -i '/\[D-Star\]/!b;n;n;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 2 ]; then sudo sed -i '/\[D-Star Network\]/!b;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 3 ]; then sudo sed -i '/\[DMR\]/!b;n;n;n;n;n;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 4 ]; then sudo sed -i '/\[DMR Network\]/!b;n;n;n;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 5 ]; then sudo sed -i '/\[System Fusion\]/!b;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 6 ]; then sudo sed -i '/\[System Fusion Network\]/!b;n;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 7 ]; then sudo sed -i '/\[P25\]/!b;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 8 ]; then sudo sed -i '/\[P25 Network\]/!b;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 9 ]; then sudo sed -i '/\[NXDN\]/!b;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 10 ]; then sudo sed -i '/\[NXDN Network\]/!b;n;n;n;n;n;n;n;cModeHang='"$2"'' /etc/mmdvmhost
        fi
fi;
