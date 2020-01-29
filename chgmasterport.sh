#!/bin/bash
############################################################
# Change Master Port in /etc/mmdvmhost, find old value and #
# substitute with new value from Profie screen passed  in  #
# $1.                                                      #
#                                                          #
#  KF6S                                        05-20-2019  #
############################################################
set -o errexit
set -o pipefail
# Use passed Master Port if present or default to 62031 if missing
if [ -z "$1" ]; then
NewHostPort="Port=62031"
else
NewHostPort="Port="$1
fi

# Get old Host Port from /etc/mmdvmhost
Host=$(sudo cat /etc/mmdvmhost | grep "\[DMR Network\]" -A 10 | grep "Port=")
# Replace with host port that was selected on the Profile Nextion screen
sudo sed -i 's+'"$Host"'+'"$NewHostPort"'+' /etc/mmdvmhost;
