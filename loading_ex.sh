#!/bin/sh

CTR=0

./loading.sh test $CTR
sleep 1
tput cuu1
tput el
while true
do
./loading.sh test $CTR
CTR=$(( $CTR+1 ))
if [[ $CTR -gt 110 ]]; then
    sleep 1
    break
fi
sleep 0.05
tput cuu1
tput el
done
