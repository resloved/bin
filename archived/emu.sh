#!/usr/bin/sh

# ROMS => ROFI => MEDNAFEN

ROMS=~/roms/
ls $ROMS | rofi -dmenu -theme list | xargs -I{} mednafen $ROMS{}
