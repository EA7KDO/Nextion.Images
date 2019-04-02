#!/bin/bash
#########################################################
# Get temp from Pi-Star web server      KF6S 04-01-2019 #
#########################################################
#Read Temp form Pi-Star web server
# On the comandline pass "C" for centigrade "F" for fahrenheit and "BC" for Pi-Star background color code (Green, Orange, Red)

if [ $1 == "C" ]; then
    wget -q -O- --user pi-star --password raspberry 127.0.0.1/admin/ | grep -A 1 '&deg;C' | awk '{print substr($3,7,4)}'
fi

if [ $1 == "F" ]; then
wget -q -O- --user pi-star --password raspberry 127.0.0.1/admin/ | grep -A 1 '&deg;C' | awk '{print substr($5,1,5)}'
fi

if [ $1 == "BC" ]; then
sudo wget -q -O- --user pi-star --password raspberry 127.0.0.1/admin/ | grep -A 1 '&deg;C' | awk '{print substr($3,1,4)}'
fi
