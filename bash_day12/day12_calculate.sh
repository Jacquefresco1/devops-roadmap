#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments"
	exit 1
fi
calculate() {
	local result=$(($1 + $2))
	echo "Result: $result"
}
if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$2" =~ ^[0-9]+$ ]]; then
	calculate "$1" "$2"
else
	echo "Error: arguments must be numbers"
	exit 1
fi
