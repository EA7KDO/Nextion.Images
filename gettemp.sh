#!/bin/bash
tempc=$(</sys/class/thermal/thermal_zone0/temp)
tc=$(echo "scale=1;$tempc/1000" | bc)
# formula tf=(9/5)*Tc+32
tf=$(echo "scale=1;((9/5) * $tc) + 32" | bc)
echo "$tf  $tc"







