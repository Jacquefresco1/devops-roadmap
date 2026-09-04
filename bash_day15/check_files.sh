#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <directory>"
	exit 1
fi
check_files() {
	files=$(find "$1" -type f -name "*.sh")
	local status=$?
	if [ "$status" -ne 0 ]; then
		return 2
	elif [ -n "$files" ]; then
		return 0
	else
		return 1
	fi
}
check_files "$1"
status=$?
if [ "$status" -eq 2 ]; then
	echo "Find error"
elif [ "$status" -eq 0 ]; then
	number=$(echo "$files" | wc -l)
	echo "Files found: $number"
else
	echo "Files not found"
fi
