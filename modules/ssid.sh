#!/usr/bin/sh

# SSID

iw dev wlp2s0 info | awk '/ssid/ { print $2 }' 