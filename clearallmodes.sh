#!/bin/bash
############################################################
#  Clear Modes in /etc/mmdvmhost                           #
#  Also disable corresponding network                       #
#  KF6S                                        09-14-2019  #
############################################################
set -o errexit
set -o pipefail
sudo mount -o remount,rw /

#echo "D-Star"
        sudo sed -i '/\[D-Star\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
        sudo sed -i '/\[D-Star Network\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
#	sudo dstarrepeater.service stop

#echo  "YSF"

        sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/ysf2dmr
        sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/ysf2nxdn
        sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/ysf2p25
 	sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/ysfgateway
        sudo sed -i '/\[System Fusion\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[System Fusion Network\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[YSF Network\]/!b;n;cEnable='"0"'' /etc/ysfgateway
	sudo sed -i '/\[FCS Network\]/!b;n;cEnable='"0"'' /etc/ysfgateway



#echo "P25"
        sudo sed -i '/\[P25\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[P25 Network\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/p25gateway

#echo  "NXDN"
         sudo sed -i '/\[NXDN\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[NXDN Network\]/!b;n;cEnable='"0"'' /etc/mmdvmhost

#echo "POCSAG"

        sudo sed -i '/\[POCSAG\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[POCSAG Network\]/!b;n;cEnable='"0"'' /etc/mmdvmhost

#echo "DMR"

        sudo sed -i '/\[DMR\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
	sudo sed -i '/\[DMR Network\]/!b;n;cEnable='"0"'' /etc/mmdvmhost
      #  sudo sed  -i 's/tgif.network/127.0.0.2/g' /etc/mmdvmhost
        sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/dmr2ysf
        sudo sed -i '/\[Enabled\]/!b;n;cEnabled='"0"'' /etc/dmr2nxdn


   if pgrep -x DMR2YSF > /dev/null
   then
     killall -9 DMR2YSF
   fi


   if pgrep -x DMR2NXDN > /dev/null
   then
     killall -9 DMR2NXDN
   fi

   if pgrep -x YSF2DMR > /dev/null
   then
     killall -9 YSF2DMR
   fi

   if pgrep -x YSF2NXDN > /dev/null
   then
     killall -9 YSF2NXDN
   fi

   if pgrep -x YSF2P25 > /dev/null
   then
     killall -9 YSF2P25
   fi

   if pgrep -x P25Gateway > /dev/null
   then
     killall -9 P25Gateway
   fi

   if pgrep -x NXDNGateway > /dev/null
   then
     killall -9 NXDNGateway
   fi

   if pgrep -x YSFGateway > /dev/null
   then
     killall -9 YSFGateway
   fi

   if pgrep -x P25Parrot > /dev/null
   then
     killall -9 P25Parrot
   fi

   if pgrep -x YSFParrot > /dev/null
   then
     killall -9 YSFParrot
   fi


#echo "DONE"

# sudo /usr/local/etc/Nextion_Support/startnet.sh DMR
 
