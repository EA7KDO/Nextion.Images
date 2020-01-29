#!/bin/bash
############################################################
#  Change DMR Master in /etc/mmdvmhost, find old value and #
#  substitute with new value from Profie 2 screen passed   #
#  in $1.                                                  #
#                                                          #
#  KF6S                                        05-20-2019  #
############################################################
set -o errexit
set -o pipefail
# Use passed DMR Master if present or default to TGIF if missing
if [ -z "$1" ]; then
NewHost="Address=74.91.125.81"
else
NewHost="Address="$1
fi

# Get old DMR Host from /etc/mmdvmhost
Host=$(sudo cat /etc/mmdvmhost | grep "\[DMR Network\]" -A 6 | grep "Address=")
# Replace with host that was selected on the Profiles 2 Nextion screen
sudo sed -i 's+'"$Host"'+'"$NewHost"'+' /etc/mmdvmhost;
