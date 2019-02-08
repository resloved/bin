#!/usr/bin/sh

# ROFI => SURF SEARCH

rofi -dmenu -theme entry | \
    xargs -I{} xdg-open https://google.com/?q={}
