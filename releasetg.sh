#!/bin/bash
#########################################################
#  Nextion Support for Nextion screen. Used to dump     #
#  current TG and change to TG4000                      #
#                                                       #
#  K5MRE & KF6S                             05-01-2019  #
#########################################################
# Use passed TS if present or default to TS2 (zero based code=1)
if [ -z "$1" ]; then
TS="1"
else
TS=$1
fi

TG=4000
ID=`egrep "Id=" /etc/mmdvmhost | cut -d'=' -f2 | awk '{print $1; exit}'`
curl -s http://tgif.network:5040/api/sessions/update/$ID/$TS/$TG
## To check arquments being passed to command take off the ## in front of echo below
##echo curl -s http://tgif.network:5040/api/sessions/update/$ID/$TS/$TG



