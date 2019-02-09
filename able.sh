#!/usr/bin/sh

# VID => STREAMABLE

CASTS="$HOME/videos/casts"
LAST=$($HOME/bin/last.sh $CASTS)
anypaste -x -p streamable ${1:-$LAST}
