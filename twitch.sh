#!/usr/bin/sh

# ROFI => STREAMLINK

CHN=$(rofi -dmenu -theme entry -p "📡")
RES=$(echo -e "480p\n720p\n720p60\n1080p60" | rofi -dmenu -theme list -p "📡")
streamlink -player ffplay twitch.tv/$CHN $RES,best 
