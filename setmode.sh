#!/bin/bash
############################################################
#  Change Mode in /etc/mmdvmhost                           #
#  $1 1-6 Select Mode to change  $2 enable= 0 or 1         #
#  Also enable corresponding network                       #
#  KF6S                                        09-14-2019  #
############################################################
set -o errexit
set -o pipefail
# Check all six modes and set each one to either 0 or 1

if [ -z "$1" ]; then
        exit
        else
        if [ "$1" = 1 ]; then sudo sed -i '/\[D-Star\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
                              sudo sed -i '/\[D-Star Network\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 2 ]; then sudo sed -i '/\[DMR\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
                              sudo sed -i '/\[DMR Network\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 3 ]; then sudo sed -i '/\[System Fusion\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
                              sudo sed -i '/\[System Fusion Network\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 4 ]; then sudo sed -i '/\[P25\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
                              sudo sed -i '/\[P25 Network\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 5 ]; then sudo sed -i '/\[NXDN\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
                              sudo sed -i '/\[NXDN Network\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
        fi

        if [ "$1" = 6 ]; then sudo sed -i '/\[POCSAG\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
                              sudo sed -i '/\[POCSAG Network\]/!b;n;cEnable='"$2"'' /etc/mmdvmhost
        fi
fi;
