#!/usr/bin/sh

# ROFI => SURF SEARCH

rofi -dmenu -theme entry -p 🕵️ | \
    xargs -I{} ${1:-xdg-open} https://google.com/search?q={}
