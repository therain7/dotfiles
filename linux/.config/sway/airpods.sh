#!/bin/bash

airpods=$(bluetoothctl devices | grep -i airpods | cut -d' ' -f2)
connected=$(bluetoothctl devices Connected | grep $airpods)

if [[ -z $connected ]]; then
    bluetoothctl connect $airpods
else
    # already connected, disconnect
    bluetoothctl disconnect $airpods
fi
