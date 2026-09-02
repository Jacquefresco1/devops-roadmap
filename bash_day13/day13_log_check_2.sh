#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <directory>"
	exit 1
fi
check_logs() {
	files=$(find "$1" -type f -name "*.log" -size +10M -mtime +7)
	local status=$?
	if [ "$status" -ne 0 ]; then
		echo "Find error"
		return 2
	elif [ -n "$files" ]; then
		echo "Old logs found"
		return 1
	else
		echo "No old logs"
		return 0
	fi
}
check_logs "$1"
status=$?
if [ "$status" -eq 0 ]; then
	echo "System OK"
elif [ "$status" -eq 1 ]; then
	echo "WARNING: Old logs detected"
	echo "Cleanup required"
else
	echo "CRITICAL: Find command failed"
	echo "Manual investigation required"
fi
