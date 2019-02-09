#!/usr/bin/sh

# VOLUME => ROFI

VOL=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')
rofi -theme output -e "📢 $VOL"
