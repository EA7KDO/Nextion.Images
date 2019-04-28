#!/bin/bash
#########################################################
#  Check if a file exists                               #
#                                                       #
#  KF6S 03-19-2019                                      #
#########################################################
set -o errexit
set -o pipefail
#
#echo $1
if [ -e $1 ]
then
echo "FILE OK!"
else
echo "FILE NOT FOUND!"
fi;

