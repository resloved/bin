#!/bin/bash

while true
do
COL="#ff0000"
GEN="#$(date +%s | md5 | cut -c1-6)"
hsetroot -add $COL -add $GEN -gradient 0 
done
