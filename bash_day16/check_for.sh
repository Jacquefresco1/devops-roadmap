#!/bin/bash
if [ "$#" -lt 2 ]; then
	echo "Error: need at least 2 arguments <directory> <file>"
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
directory="$1"
shift
overall_status=0
for pattern in "$@"; do
	check_files "$directory" "$file"
	status=$?
	number=$(echo "$files" | wc -l)
	if [ "$status" -eq 2 ]; then
		overall_status=2
		echo "Pattern: $file"
		echo "Find error"
	elif [ "$status" -eq 1 ]; then
		if [ "$overall_status" -eq 0 ]; then
                        overall_status=1
                fi
		echo "Pattern: $file"
		echo "Found: 0"
	else
		echo "Pattern: $file"
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
