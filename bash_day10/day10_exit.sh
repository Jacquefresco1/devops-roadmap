#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument"
	exit 1
fi
ls "$1"
result="$?"
echo "Exit status: $result"
if [ "$result" -eq 0 ]; then
	echo "Command succeeded"
elif [ "$result" -eq 2 ]; then
	echo "Command failed: path problem"
	exit 1
else
	echo "Command failed: unknown error"
	exit 1
fi
