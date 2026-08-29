#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need just one argument"
	exit 1
fi
ls "$1"
result="$?"
echo "Command result: $result"
if [ "$result" -eq 0 ]; then
	echo "Command succeeded"
else
	echo "Command failed"
	exit 1
fi

#Альтернатива
#if [ "$#" -ne 1 ]; then
#    echo "Error: need just one argument"
#    exit 1
#fi
#
#if ls "$1"; then
#    echo "Command succeeded"
#else
#    echo "Command failed"
#    exit 1
#fi
