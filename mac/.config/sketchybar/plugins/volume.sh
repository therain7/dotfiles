#!/bin/sh

if [ $SENDER = "volume_change" ]; then
    sketchybar --set $NAME label="${INFO}p"
fi
