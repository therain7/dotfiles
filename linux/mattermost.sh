#!/bin/sh

nohup mattermost-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland >&/dev/null &!
