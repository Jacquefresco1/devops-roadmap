#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
awk -F ',' '{ print $2 }' "$1"
awk -F '=' '{ print $1 }' "$1"
awk -F '=' '{ print $2 }' "$1"
