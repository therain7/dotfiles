#!/bin/bash

app=$(swaymsg -t get_tree | jq -r '.. | select(.type?) | select(.focused==true) | .app_id')

if [[ $app == "Alacritty" ]]; then
   wtype -M ctrl -M shift -P c
else
   wtype -M ctrl -P c
fi
