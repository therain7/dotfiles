#!/bin/sh

sketchybar --set $NAME \
    label="$(yabai -m query --windows --window | jq -r '.title')"
