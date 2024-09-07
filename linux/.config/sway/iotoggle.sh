#!/bin/sh

swaymsg output "eDP-1" toggle
swaymsg input type:touchpad events toggle enabled disabled
