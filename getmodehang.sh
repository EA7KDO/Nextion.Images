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

if [ "$1" = 1 ]; then  sudo cat /etc/mmdvmhost | grep "\[D-Star\]" -A 8 | grep "ModeHang=" | cut -b 10-13
fi

if [ "$1" = 2 ]; then  sudo cat /etc/mmdvmhost | grep "\[D-Star Network\]" -A 6 | grep "ModeHang=" | cut -b 10-13
fi

if [ "$1" = 3 ]; then  sudo cat /etc/mmdvmhost | grep "\[DMR\]" -A 11 | grep "ModeHang=" | cut -b 10-13
fi

if [ "$1" = 4 ]; then  sudo cat /etc/mmdvmhost | grep "\[DMR Network\]" -A 10 | grep "ModeHang=" | cut -b 10-13
fi 

if [ "$1" = 5 ]; then  sudo cat /etc/mmdvmhost | grep "\[System Fusion\]" -A 6 | grep "ModeHang=" | cut -b 10-13
fi

if [ "$1" = 6 ]; then  sudo cat /etc/mmdvmhost | grep "\[System Fusion Network\]" -A 7 | grep "ModeHang=" | cut -b 10-13 
fi

if [ "$1" = 7 ]; then  sudo cat /etc/mmdvmhost | grep "\[P25\]" -A 6 | grep "ModeHang=" | cut -b 10-13
fi

if [ "$1" = 8 ]; then  sudo cat /etc/mmdvmhost | grep "\[P25 Network\]" -A 6 | grep "ModeHang=" | cut -b 10-13
fi 

if [ "$1" = 9 ]; then  sudo cat /etc/mmdvmhost | grep "\[NXDN\]" -A 6 | grep "ModeHang=" | cut -b 10-13
fi

if [ "$1" = 10 ]; then  sudo cat /etc/mmdvmhost | grep "\[NXDN Network\]" -A 7 | grep "ModeHang=" | cut -b 10-13
fi

