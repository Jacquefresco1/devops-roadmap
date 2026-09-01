#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 numbers"
	exit 1
fi
calculate() {
	local result=$(($1 + $2))
	echo "Result: $result"
}
calculate $1 $2
echo "Outside result: empty"
