#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument"
	exit 1
fi
validate_number() {
	if [[ "$1" =~ ^[0-9]+$ ]]; then
		echo "Valid number: $1"
		return 0
	else
		echo "Invalid number: $1"
		return 1
	fi
}
if validate_number "$1"; then
	echo "Validation passed"
else
	echo "Validation failed"
	exit 1
fi
