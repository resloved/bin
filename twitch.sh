#!/usr/bin/sh

# ROFI => STREAMLINK

if [ $1 == "-f" ] || [ $1 == "--following" ]; then
    CHN=$(python $HOME/bin/live.py | rofi -dmenu -theme list -p "⭐")
else
    CHN=$(rofi -dmenu -theme entry -p "📜")
fi

if [ ! -z "$CHN" ]; then
    streamlink -p ffplay twitch.tv/$CHN 720p,Best &
fi
