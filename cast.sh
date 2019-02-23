#!/bin/bash

# SIMPLE FFMPEG SCREENCAST

OFFS=""
# Flags
# -s --selection
if [ $1 == "-s" ] || [ $1 == "--selection" ] ; then
    read -r X Y W H < <(slop -f "%x %y %w %h")
    SIZE=$W"x"$H
    OFFS="+"$X","$Y
# Screen
else
    SIZE=$(xdpyinfo | grep dimensions | awk '{print $2;}')
fi

FOLDER="$HOME/videos/casts"

ffmpeg -y \
       -f alsa -ac 2 -i pulse \
       -f x11grab \
       -y -r 60 \
       -s $SIZE \
       -i :0.0$OFFS \
       -acodec pcm_s16le \
       -vcodec libx264 \
       -preset ultrafast -crf 0 -threads 0 \
       $FOLDER/$(date +%s).mkv
