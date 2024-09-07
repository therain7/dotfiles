#!/bin/sh

nohup flatpak run com.mattermost.Desktop --enable-features=UseOzonePlatform --ozone-platform=wayland >&/dev/null &!
