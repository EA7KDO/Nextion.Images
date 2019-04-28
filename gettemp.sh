#!/bin/bash
#########################################################
#  Support for Nextion screen, get celsius temp from    #
#  thermal zone zero on RPi and convert to fahrenheit   # 
#  Return both for display                              #
#  KF6S                                     04-10-2019  #
#########################################################
set -o errexit
set -o pipefail

tempc=$(</sys/class/thermal/thermal_zone0/temp)
tc=$(echo "scale=1;$tempc/1000" | bc)
# formula tf=(9/5)*Tc+32
tf=$(echo "scale=1;((9/5) * $tc) + 32" | bc)
echo "$tf   $tc";







