#!/bin/sh

LAYOUT=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources \
    | grep 'KeyboardLayout Name' | sed -E 's/^.+ = \"?([^\"]+)\"?;$/\1/')

case $LAYOUT in
    "U.S.") LAYOUT="abc";;
    "RussianWin") LAYOUT="ru";;
esac

sketchybar --set $NAME label="$LAYOUT"
