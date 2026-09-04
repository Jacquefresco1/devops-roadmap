#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <directory>"
	exit 1
fi
check_files() {
	files=$(find "$1" -type f -name "$2")
	local status=$?
		if [ "$status" -ne 0 ]; then
			return 2
		elif [ -n "$files" ]; then
			return 0
		else
			return 1
		fi
}
check_files "$1" "*.sh"
status=$?
files_1="$files"
check_files "$1" "*.conf"
status_1=$?
if [ "$status" -eq 2 ] || [ "$status_1" -eq 2 ] ; then
	echo "Find error"
elif [ "$status" -eq 1 ] || [ "$status_1" -eq 1 ]; then
	echo "System: ATTENTION"
else
	number=$(echo "$files" | wc -l)
	number_1=$(echo "$files_1" | wc -l)
	echo "System: OK"
	if [ -n "$files" ]; then
		echo "Files .conf founded: $number"
	fi
	if [ -n "$files_1" ]; then
		echo "Files .sh founded: $number_1"
	fi
fi
