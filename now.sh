#!/usr/bin/sh

# TIME => ROFI

NOW=$(date +'%H:%M')
rofi -theme output -e "⏰ $NOW"
