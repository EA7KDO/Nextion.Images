#!/bin/bash
####################################################################
#  Check if file has been updated in last five minutes.            #
#  $1 = filename to check                                          #
#                                                                  #
#  KF6S                                                 06-04-2020 #
####################################################################
set -o errexit
set -o pipefail

if [ -z "$1" ]; then
        echo "No file name argument?"
        exit
fi

file=$1
if [ -f "$file" ]; then
        #echo $file
        current=`date +%s`
        last_modified=`stat -c "%Y" $file`
        #echo $current
        #echo $last_modified

        if [ $(($current-$last_modified)) -gt 300 ]; then
                echo "old";
        else
                echo "new";
        fi
else
echo "File not found"
fi
