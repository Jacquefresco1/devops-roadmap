#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <directory>"
	exit 1
fi
check_scripts() {
	files=$(find "$1" -type f -name "*.sh")
	local status=$?
		if [ "$status" -ne 0 ]; then
			echo "Scripts: Find error"
			return 2
		elif [ -n "$files" ]; then
			echo "Scripts: Files founded"
			return 0
		else
			echo "Scripts: Files not found"
			return 1
		fi
}
check_scripts "$1"
status=$?
check_logs() {
	files=$(find "$1" -type f -name "*.log")
	local status=$?
		 if [ "$status" -ne 0 ]; then
                        echo "Logs: Find error"
                        return 2
                elif [ -n "$files" ]; then
                        echo "Logs: Files founded"
                        return 1
                else
                        echo "Logs: Files not found"
                        return 0
                fi
}
check_logs "$1"
status_1=$?
check_old_logs() {
	files=$(find "$1" -type f -name "*.log" -size +10M -mtime +7)
	local status=$?
		if [ "$status" -ne 0 ]; then
                        echo "Old logs: Find error"
                        return 2
                elif [ -n "$files" ]; then
                        echo "Old logs: Files founded"
                        return 1
                else
                        echo "Old logs: Files not found"
                        return 0
                fi
}
check_old_logs "$1"
status_2=$?
if [ "$status" -eq 2 ] || [ "$status_1" -eq 2 ] || [ "$status_2" -eq 2 ]; then
	echo "System: CRITICAL"
elif [ "$status" -eq 1 ] || [ "$status_1" -eq 1 ] || [ "$status_2" -eq 1 ]; then
	echo "System: ATTENTION"
else
	echo "System: OK"
fi
