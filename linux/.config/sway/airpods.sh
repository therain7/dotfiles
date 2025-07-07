#!/bin/bash

airpods=$(bluetoothctl devices | grep -i airpods | cut -d' ' -f2)
connected=$(bluetoothctl devices Connected | grep $airpods)

if [[ -z $connected ]]; then
    notify-send "connecting airpods"
    bluetoothctl connect $airpods
else
    # already connected, disconnect
    notify-send "disconnecting airpods"
    bluetoothctl disconnect $airpods
fi
