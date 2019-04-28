#!/bin/bash
set -o errexit
set -o pipefail

#########################################################
# Get Modem Hat from Pi-Star web server                 #
# KF6S                                      03-22-2019  #
#########################################################
# Use Pi-Star password from command $1
password=$1
if [ -z $1 ]
  then
     password="raspberry" 
fi
#Read MMDVM Hat version form Pi-Star web server
sudo wget -q -O- --user pi-star --password $password 127.0.0.1/admin/configure.php | grep -A 50 'What kind of radio or modem hardware do you have?' | grep '<option selected="selected" value="'| awk '{print substr($3,8,match($3,">")-9)}';

