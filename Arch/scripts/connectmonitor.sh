#!/bin/sh
if [ "$1" = "mirror" ]; then
	xrandr --output HDMI-2 --mode 1920x1080 --rate 60
elif [ "$1" = "seperate" ]; then
	xrandr --output HDMI-2 --auto --right-of eDP-1
elif [ "$1" = "disable" ]; then
	xrandr --output HDMI-2 --off
else
	echo "Select either mirror or seperate, or disable"
fi
