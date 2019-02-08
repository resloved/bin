#!/usr/bin/sh

# ROFI => CHROMIUM

rofi -dmenu -theme entry | xargs -I{} xdg-open {}
