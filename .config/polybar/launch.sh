#!/usr/bin/env bash

killall -q polybar

second=$(xrandr --listmonitors | grep " DP"| sed -n -e 's/.*  //p') 
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
if [ -z "$second" ]
then
	echo "single monitor"
	MONITOR=$(xrandr --listmonitors | grep " eDP"| sed -n -e 's/.*  //p') polybar main &
else
	echo "dual monitor"
	MONITOR=$(xrandr --listmonitors | grep " DP"| sed -n -e 's/.*  //p') polybar DisplayPort2 &
	MONITOR=$(xrandr --listmonitors | grep " eDP"| sed -n -e 's/.*  //p') polybar main &
fi
echo "Bars launched..." 
