#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments <filename> <text>"
	exit 1
fi
if [ -f "$1" ]; then
	count1=$(grep -oi "$2" "$1" | wc -l)
	count2=$(grep -ni "$2" "$1" | awk -F ':' '{print $1}')
	echo "Line "$2" in "$1" was founded - "$count1" times"
	echo "Line number in "$1" where we find "$2" - $count2"
else
	echo "Error: file does not exist"
	exit 1
fi
