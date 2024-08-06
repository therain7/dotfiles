#!/bin/sh

DISPLAY="eDP-1"
TOUCHPAD="2321:21128:SYNA3602:00_0911:5288_Touchpad"

swaymsg -p -t get_outputs | grep $DISPLAY | grep "disabled" > /dev/null
if [ $? -eq 0 ]; then
	swaymsg output $DISPLAY enable
	swaymsg input $TOUCHPAD events enabled
else
	swaymsg output $DISPLAY disable
	swaymsg input $TOUCHPAD events disabled
fi
