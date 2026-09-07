#!/bin/bash
if [ "$#" -lt 2 ]; then
	echo "Error: need at least 2 arguments <directory> <pattern>"
	exit 1
fi
directory="$1"
shift
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
for pattern in "$@"; do
	check_files "$directory" "$pattern"
	status=$?
	echo "Checking: $pattern"
	if [ "$status" -eq 2 ]; then
		echo "Find error"
	elif [ "$status" -eq 1 ]; then
		echo "Found: 0"
	else
		number=$(echo "$files" | wc -l)
		echo "Found: $number"
	fi
done
