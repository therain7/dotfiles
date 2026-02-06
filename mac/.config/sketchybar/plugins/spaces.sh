#!/bin/bash

SPACES=$(yabai -m query --spaces | jq -r '.[] | "\(.index) \(.["has-focus"]) \(.windows | length)"')

while read -r idx focused wcount; do
    if [[ $focused == true ]]; then
        color=0xffffffff
    elif (( wcount > 0 )); then
        color=0x70ffffff
    else
        color=0x20ffffff
    fi
    sketchybar --set s$idx label.color=$color
done <<< "$SPACES"
