#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments"
	exit 1
fi
calculate() {
	if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$2" =~ ^[0-9]+$ ]]; then
		local result=$(($1 + $2))
		echo "Result: $result"
		return 0
	else
		echo "Error: arguments must be numbers"
		return 1
	fi
}
if calculate "$1" "$2"; then
	echo "Calculation passed"
else
	echo "Calculation failed"
	exit 1
fi

