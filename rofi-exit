#!/usr/bin/sh

# ROFI => EXIT i3 || SHUTDOWN

ACT=$(echo -e "CANCEL\nEXIT\nSHUTDOWN" | rofi -dmenu -theme list -p "💻" -i)

if [ $ACT == "EXIT" ]
then
    i3-msg exit
elif [ $ACT == "SHUTDOWN" ]
then
    poweroff 
fi
