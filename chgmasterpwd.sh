#!/bin/bash
####################################################################
# Change Master password in  /etc/mmdvmhost,                       #
# find old value and substitute with new value from Profie wcreen  #
# that was passed in $1.                                           #
#                                                                  #
# KF6S                                                 05-20-2019  #
####################################################################
set -o errexit
set -o pipefail
# Use passed DMR Master if present or default to TGIF if missing
if [ -z "$1" ]; then
NewHostPWD="Password=passw0rd"
else
NewHostPWD="Password="$1
fi

# Get old Host Password from /etc/mmdvmhost
OldHostPWD=$(sudo cat /etc/mmdvmhost | grep "\[DMR Network\]" -A 10 | grep "Password")
# Replace with host password that was selected on the Profile Nextion screen
sudo sed -i 's+'"$OldHostPWD"'+'"$NewHostPWD"'+' /etc/mmdvmhost;
