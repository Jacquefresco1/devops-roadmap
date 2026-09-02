#!/bin/bash
check_logs() {
	files=$(find . -type f -name "*.log" -size +10M -mtime +7)
	local status=$?
	if [ "$status" -ne 0 ];then
		echo "Find error"
		return 2
	elif [ -n  "$files" ]; then
		echo "Old logs found"
		return 1
	else
		echo "No old logs"
		return 0
	fi
}
check_logs
status=$?
if [ "$status" -eq 0 ]; then
	echo "System OK"
elif [ "$status" -eq 1 ]; then
	echo "Old logs detected"
else
	echo "Find command failed"
	exit 1
fi
