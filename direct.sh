#!/usr/bin/sh

# ROFI => CHROMIUM

rofi -dmenu -theme entry -p 🧙‍♂️ | xargs -I{} ${1:-xdg-open} {}
