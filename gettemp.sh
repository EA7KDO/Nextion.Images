#########################################################
# Get temp from Pi-Star web server KF6S 04-01-2019 #
#########################################################
#Read Temp form Pi-Star web server
C=`wget -q -O- --user pi-star --password raspberry 127.0.0.1/admin/ | grep -A 1 '&deg;C' | awk '{print substr($3,7,5)}' | sed 's/&//' | sed 's/d//'`
F=`wget -q -O- --user pi-star --password raspberry 127.0.0.1/admin/ | grep -A 1 '&deg;C' | awk '{print substr($5,1,5)}' | sed 's/&//' | sed 's/d//'`
echo "$F" "   " "$C"



