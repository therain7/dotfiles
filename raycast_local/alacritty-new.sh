#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Alacritty New
# @raycast.mode silent

# Optional parameters:
# @raycast.icon alacritty.icns

# Documentation:
# @raycast.author therain
# @raycast.authorURL https://raycast.com/therain

alacritty msg create-window 2>/dev/null 
open -a Alacritty

