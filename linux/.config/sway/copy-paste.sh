#!/bin/bash

case $1 in
  "copy") key=c ;;
  "paste") key=v ;;
  *) exit 1 ;;
esac

app=$(swaymsg -t get_tree | jq -r '.. | select(.type?) | select(.focused==true) | .app_id')

if [[ $app == "Alacritty" ]]; then
   wtype -M ctrl -M shift -P $key
else
   wtype -M ctrl -P $key
fi
