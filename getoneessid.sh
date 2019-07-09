#!/bin/bash
###############################################################
# Support for Nextion Screen to format ESSID list for screen  #
#                                                             #
#                                                             #
#                                                             #
#                                                             #
# KF6S                                            06-04-2019  #
###############################################################

if [ -z "$1" ]; then
ESSID_INDEX="1"
else
ESSID_INDEX="$1"
fi

sudo iwlist wlan0 scan | grep ESSID: | awk -v awk_1=$ESSID_INDEX '/ESSID:/{i++}i==awk_1' | awk '{ gsub ( " ", "", $0);
print substr( $0, 0, 200 ) }' |  awk '{ gsub ( "\"", "", $0);
print substr( $0, 0, 200 ) }' |  awk '{ gsub ( "ESSID:", "", $0); print substr( $0, 0, 200 ) }'
