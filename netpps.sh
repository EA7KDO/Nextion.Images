#!/bin/bash
##################################################
# Nextion support for Scope screen NET function  #
# Calculate Network TX and RX Packets per second #
# KF6S				    04-10-2019   #
##################################################

INTERVAL=".1"  # update interval in seconds

if [ -z "$1" ]; then
        exit
fi

if [ -z "$2" ]; then
        $2=0
fi

R1=`cat /sys/class/net/$1/statistics/rx_packets`
T1=`cat /sys/class/net/$1/statistics/tx_packets`
sleep $INTERVAL
R2=`cat /sys/class/net/$1/statistics/rx_packets`
T2=`cat /sys/class/net/$1/statistics/tx_packets`
RXPPS=`echo "($R2 - $R1) * 10 * $2" | bc`
TXPPS=`echo "($T2 - $T1) * 10 * $2" | bc`
printf '%-15s' $TXPPS $RXPPS;

