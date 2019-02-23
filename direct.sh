#!/usr/bin/sh

# ROFI => BROWSER

rofi -dmenu -theme entry -p  | \
    xargs -I{} ${1:-xdg-open} {}
