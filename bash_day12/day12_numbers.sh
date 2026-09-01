#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments"
	exit 1
fi
if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$2" =~ ^[0-9]+$ ]]; then
	echo "Numbers are valid"
else
	echo "Error: arguments must be numbers"
	exit 1
fi
