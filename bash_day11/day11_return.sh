#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument"
	exit 1
fi
check_file() {
	if [ -f "$1" ]; then
		echo "File exists"
		return 0
	else
		echo "File does not exist"
		return 1
	fi
}
check_file "$1"
result=$?
echo "Function result: $result"
