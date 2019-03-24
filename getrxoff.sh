grep  'RXOffset=' /etc/mmdvmhost | awk '{print substr($1,10,4)}'
