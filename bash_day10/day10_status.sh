#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need to be 1 argument"
	exit 1
fi
[ -f "$1" ]
if [ $? -eq 0 ]; then
	echo "File check passed"
else
	echo "File check failed"
	exit 1
fi
