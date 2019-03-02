#!/usr/bin/sh

# ROFI => GOOGLE

rofi -dmenu -theme entry -p  | \
    xargs -I{} ${1:-xdg-open} https://google.com/search?q={}
