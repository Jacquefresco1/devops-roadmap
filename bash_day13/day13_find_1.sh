#!/bin/bash
check_logs() {
	files=$(find . -type f -name "*.log" -size +10M -mtime +7)
	if [ -n "$files" ]; then
		echo "Old logs found"
		return 1
	else
		echo "No old logs"
		return 0
	fi
}
if check_logs; then
	echo "System Ok"
else
	echo "System needs attention"
fi

