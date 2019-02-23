#!/usr/bin/sh

# BATTERY => ROFI

BAT="/sys/class/power_supply/BAT0"
PCT=$(cat $BAT/capacity)

if [ $(cat $BAT/status) == "Discharging" ]
then
   CHG=""
else
   CHG=""
fi

rofi -theme output -e "$CHG $PCT%"
