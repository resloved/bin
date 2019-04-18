#!/usr/bin/sh

# USB CONNECTION

MSG=$(dmesg | grep -E '(New USB|disconnect)' | tail -1)
USB=$(echo $MSG | awk '{ print $3 }') 

if [ $(echo $MSG | awk '{ print $5 }') = 'USB' ]
then
    TAG=""
else
    TAG=""
fi

echo $TAG ${USB%?}
    
