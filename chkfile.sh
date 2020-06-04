#!/bin/bash
#########################################################
#  Check if a file exists                               #
#                                                       #
#  KF6S 06-04-2020                                      #
#########################################################
set -o errexit
set -o pipefail
#
#echo $1
FILE="/usr/local/etc/Nextion_Support/$1"
#echo $FILE

if [ -f "$FILE" ]; then
   echo "TRUE"
else
   echo "FALSE"
fi;


