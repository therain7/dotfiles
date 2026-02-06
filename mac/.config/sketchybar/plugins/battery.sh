#!/bin/sh

VAL=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [[ $CHARGING == "" ]]; then
    VAL="${VAL}p"
else
    VAL="${VAL}c"
fi

sketchybar --set $NAME label=$VAL
