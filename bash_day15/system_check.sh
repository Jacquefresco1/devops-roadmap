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
	elif [ -z "$files" ]; then
		return 1
	else
		return 0
	fi
}
check_files "$1" "*.sh"
status=$?
files_1="$files"
check_files "$1" "*.conf"
status_1=$?
files_2="$files"
check_files "$1" "*.log"
status_2=$?
if [ "$status" -eq 2 ] || [ "$status_1" -eq 2 ] || [ "$status_2" -eq 2 ]; then
	echo "Find error"
elif [ "$status" -eq 1 ] || [ "$status_1" -eq 1 ] || [ "$status_2" -eq 1 ]; then
	echo "System: ATTENTION"
else
	number=$(echo "$files" | wc -l)
	number_1=$(echo "$files_1" | wc -l)
	number_2=$(echo "$files_2" | wc -l)
	echo "System: OK"
	if [ -n "$files_1" ]; then
		echo "Scripts found: $number_1"
	fi
	if [ -n "$files_2" ]; then
		echo "Configs found: $number_2"
	fi
	if [ -n "$files" ]; then
		echo "Logs found: $number"
	fi
fi
