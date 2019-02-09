#!/usr/bin/sh

# BATTERY => ROFI

BAT=$(cat /sys/class/power_supply/BAT0/capacity)
rofi -theme output -e "⚡ $BAT%"
