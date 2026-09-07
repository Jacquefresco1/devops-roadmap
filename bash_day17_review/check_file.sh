#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need exactly 1 argument <file>"
	exit 1
fi
if [ -f "$1" ]; then
	echo "File exists"
	exit 0
else
	echo "File does not exist"
	exit 1
fi
