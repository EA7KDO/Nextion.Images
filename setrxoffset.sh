#!/bin/bash
#PATH=~/home/pi-star:$PATH
#########################################################
#  Change RXOffset in mmdvmhost                         #
#                                                       #
#  KF6S                                     03-19-2019  #
#########################################################
# Get old RXOffset value in $1 and new value to set in $2
#Put Pi-Star file system in RW mode
#Use SED to replace RXOffset in mmdvmhost
chgrx() { sed -i 's+RXOffset='"$1"'+RXOffset='"$2"'+' /etc/mmdvmhost; }
chgrx $1 $2
