#!/usr/bin/sh

# VOLUME => ROFI

VOL=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')

if [ $(pacmd list-sinks | awk '/muted/ {print $2}') == "no" ]
then
   MUTE="📢"
else
   MUTE="🛑"
fi
   
rofi -theme output -e "$MUTE $VOL"
