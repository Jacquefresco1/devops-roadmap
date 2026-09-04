#!/bin/bash
if [ "$#" -ne 1 ]; then
        echo "Error: need 1 argument <directory>"
        exit 1
fi
check_scripts() {
        files=$(find "$1" -type f -name "*.sh")
        local status=$?
        if [ "$status" -ne 0 ]; then
                return 2
        elif [ -n "$files" ]; then
                return 0
        else
                return 1
        fi
}
check_configs() {
	files_1=$(find "$1" -type f -name "*.conf")
        local status=$?
        if [ "$status" -ne 0 ]; then
                return 2
        elif [ -n "$files_1" ]; then
                return 0
        else
                return 1
        fi
}
check_configs "$1"
status_1=$?
check_scripts "$1"
status=$?
if [ "$status" -eq 2 ] || [ "$status_1" -eq 2 ]; then
        echo "Find error"
elif [ "$status" -eq 1 ] || [ "$status_1" -eq 1 ]; then
	echo "System: ATTENTION"
else
        echo "System OK"
	number=$(echo "$files" | wc -l)
        number_1=$(echo "$files_1" | wc -l)
                if [ -n "$files" ]; then
                        echo "Files .sh found: $number"
                fi
                if [ -n "$files_1" ]; then
                        echo "Files .conf found: $number_1"
                fi
fi
