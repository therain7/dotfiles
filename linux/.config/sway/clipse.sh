#!/bin/sh

ARGS="-T clipse-alacritty -e clipse"

alacritty msg create-window $ARGS
if [ "$?" != "0" ]
then
  alacritty $ARGS
fi
