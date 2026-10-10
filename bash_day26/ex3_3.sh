#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument"
	exit 1
fi
count1=$(awk -F ':'  '$NF=="/bin/bash" { print $1 }' "$1" | paste -sd ',')
count2=$(awk -F ':'  '$NF=="/bin/bash" { print $1 }' "$1" |wc -l)
echo "Users: $count1"
echo "Bash users count: $count2"
