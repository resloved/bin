#!/usr/bin/sh

# DICTIONARY => ROFI

FILE="$HOME/bin/words.txt"
cat $FILE | rofi -dmenu -theme list -p 📝
