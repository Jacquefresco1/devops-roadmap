#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument <file name>"
	exit 1
fi
validate_file() {
	if [ -f "$1" ]; then
		echo "Valid file: $1"
		return 0
	else
		echo "Invalid file: $1"
		return 1
	fi
}
if validate_file "$1"; then
	echo "Validation passed"
else
	echo "Validation failed"
	exit 1
fi
