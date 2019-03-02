#!/bin/sh

arr=( ⠋ ⠇ ⠦ ⠤ ⠴ ⠸ ⠙ ⠉ )

RD='\033[0;31m'
GR='\033[0;32m'
WH='\033[0;37m'

OFF="$RD✖"
ON="$GR"


if [[ $2 -lt 1 ]]; then
    CHAR=$OFF
elif [[ $2 -gt 99 ]]; then
    CHAR=$ON
else
    TOP=$(( $2 * 8 ))
    LOW=$(( $TOP % 100 ))
    IDX=$(( ($TOP - $LOW) / 100 ))
    CHAR=${arr[$IDX]}
fi
    
echo -e "$CHAR $WH$1 "
