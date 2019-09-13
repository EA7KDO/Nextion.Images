#!/bin/bash
############################################################
#  Get  Mode from /etc/mmdvmhost                           #
#  $1 1-6 Select Mode to get status of                     #
#                                                          #
#  Returns the status Enable=0 or 1                        #
#                                                          #
#  KF6S                                        09-01-2019  #
############################################################
set -o errexit
set -o pipefail

if [ "$1" = 1 ]; then  sudo cat /etc/mmdvmhost | grep "\[D-Star\]" -A 1 | grep "Enable=" | cut -b 8-9
fi

if [ "$1" = 2 ]; then  sudo cat /etc/mmdvmhost | grep "\[DMR\]" -A 1 | grep "Enable=" | cut -b 8-9
fi

if [ "$1" = 3 ]; then  sudo cat /etc/mmdvmhost | grep "\[System Fusion\]" -A 1 | grep "Enable=" | cut -b 8-9
fi

if [ "$1" = 4 ]; then  sudo cat /etc/mmdvmhost | grep "\[P25\]" -A 1 | grep "Enable=" | cut -b 8-9
fi

if [ "$1" = 5 ]; then  sudo cat /etc/mmdvmhost | grep "\[NXDN\]" -A 1 | grep "Enable=" | cut -b 8-9
fi

if [ "$1" = 6 ]; then  sudo cat /etc/mmdvmhost | grep "\[POCSAG\]" -A 1 | grep "Enable=" | cut -b 8-9
fi
