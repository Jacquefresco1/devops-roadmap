#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need exactly 2 arguments <directory> <file>"
	exit 1
fi
check_files() {
	files=$(find "$1" -type f -name "$2")
	local status=$?
	if [ "$status" -ne 0 ]; then
		return 2
	elif [ -z "$files" ]; then
		return 1
	else
		return 0
	fi
}
check_files "$1" "$2"
status=$?
if [ "$status" -eq 2 ]; then
	echo "Find error"
	exit 2
elif [ "$status" -eq 1 ]; then
	echo "Files found: 0"
	exit 1
else
	number=$(echo "$files" | wc -l)
	echo "Files found: $number"
	exit 0
fi
