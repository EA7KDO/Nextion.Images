#!/bin/bash
###############################################################
# Support for Nextion Screen to format ESSID list for screen  #
#                                                             #
#                                                             #
#                                                             #
#                                                             #
# KF6S                                            07-01-2019  #
###############################################################

sudo mount -o remount,rw /
sleep 1s
sudo iwlist wlan0 scan | grep ESSID | awk '{print $1}' > /usr/local/etc/Nextion_Support/essid.txt
##sudo rm /usr/local/etc/Nextion_Support/essid.txt
input="/usr/local/etc/Nextion_Support/essid.txt"
sudo rm /usr/local/etc/Nextion_Support/essid2.txt
output="/usr/local/etc/Nextion_Support/essid2.txt"
index=1
while IFS= read -r line
do
  echo "#"$index "$line" "  " >> $output
  index=$((index+1))
done < "$input"
cat /usr/local/etc/Nextion_Support/essid2.txt | tr -d '\n' > /usr/local/etc/Nextion_Support/essid3.txt
cat /usr/local/etc/Nextion_Support/essid3.txt | awk '{ gsub ( "\"", "", $0); print substr( $0, 0, 80 ) }'
