#!/bin/bash
if [ "$#" -lt 2 ]; then
	echo "Error: need at least 2 arguments <directory> <file>"
	exit 1
fi
check_logs() {
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

directory="$1"
shift
overall_status=0
for pattern in "$@"; do
	check_logs "$directory" "$pattern"
	status=$?
	echo "Checking: $pattern"
	if [ "$status" -eq 2 ]; then
		echo "Find error"
		overall_status=2
	elif [ "$status" -eq 1 ]; then
		echo "Found: 0"
		if [ "$overall_status" -eq 0 ]; then
			overall_status=1
		fi
	else
		number=$(echo "$files" | wc -l)
		echo "Found: $number"
	fi
done

if [ "$overall_status" -eq 2 ]; then
	echo "System: ERROR"
elif [ "$overall_status" -eq 1 ]; then
	echo "System: ATTENTION"
else
	echo "System: OK"
fi
