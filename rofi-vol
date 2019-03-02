#!/usr/bin/sh

# VOLUME => ROFI

MAS=$(amixer get Master  | grep 'Right:')
CAP=$(amixer get Capture | grep 'Right:') 

M_MUTE=$(echo $MAS | awk -F '[][]' '{ print $4 }')
C_MUTE=$(echo $CAP | awk -F '[][]' '{ print $4 }')

M_VOL=$(echo $MAS | awk -F '[][]' '{ print $2 }')
C_VOL=$(echo $CAP | awk -F '[][]' '{ print $2 }')


if [ $M_MUTE == "on" ]
then
   M_MUTE=""
else
   M_MUTE=""
fi
   
if [ $C_MUTE == "on" ]
then
   C_MUTE=""
else
   C_MUTE=""
fi

rofi -theme output -e "$M_MUTE $M_VOL $C_MUTE $C_VOL"
