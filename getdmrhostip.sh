#!/bin/bash
############################################################
#  Lookup DMR Master IP in /usr/local/etc/DMR_Hosts.txt    #
#  Return IP Address.                                      #
#                                                          #
#                                                          #
#  KF6S                                        05-20-2019  #
############################################################
set -o errexit
set -o pipefail
# Use passed DMR Master name to lookup IP address
if [ -z "$1" ]; then
HostName="TGIF_Network"
else
HostName="$1"
fi

DMRHOSTS=/usr/local/etc/DMR_Hosts.txt
IP=sudo cat ${DMRHOSTS} | grep $HostName  | awk '{print $3}'

if [ -z IP ]; then
echo "74.91.125.81"
else
echo $IP
fi
