#!/bin/bash

FOLDER="$HOME/pictures/screenshots"
TMP="/tmp/scroptmp.png"
FILE=`date +%Y-%m-%d:%H:%M:%S.png`

scrot $TMP -u
convert $TMP \( +clone -background black -shadow 60x10+0+10 \) +swap -background transparent -layers merge +repage "$FOLDER/$FILE"

rm $TMP
