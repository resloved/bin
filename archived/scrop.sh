#!/bin/bash

FOLDER=${1:-"$HOME/pictures/screenshots"}
TMP="/tmp/scroptmp.png"
FILE=`$(date +%s).png`

scrot $TMP -u
convert $TMP \( +clone -background black -shadow 60x10+0+10 \) +swap -background transparent -layers merge +repage "$FOLDER/$FILE"

rm $TMP
