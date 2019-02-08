#!/usr/bin/sh

# DICTIONARY => ROFI

FILE="words.txt"
cat $FILE | rofi -dmenu -theme list
