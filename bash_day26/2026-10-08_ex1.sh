#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
filecheck() {
	if [ -f "$1" ]; then
		result=$(stat -c "%a,%U,%G" "$1")
		r1=$(echo "$result" | awk -F ',' '{ print $1 }')
		r2=$(echo "$result" | awk -F ',' '{ print $2, $3 }')
		echo "Rights: $r1"
		echo "Owner and group: $r2"
	else
		echo "Error: file does not exist"
		exit 1
	fi
}
filecheck "$1"
