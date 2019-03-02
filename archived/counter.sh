#!/usr/bin/sh

# LOGS CURRENT ENVIRONMENT

ID=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
NAME=$(xprop -id $ID | awk '/_NET_WM_NAME/{$1=$2="";print}' | cut -d'"' -f2)

TIME=$(date +%H:%M:%S)
FILE="$HOME/.logs/$(date +%Y-%m-%d).log"

echo "$TIME $NAME" >> $FILE
paplay ~/sounds/unsure.ogg
