#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument"
	exit 1
fi
check_file() {
	if [ -f "$1" ]; then
		return 0
	else
		return 1
	fi
}
if check_file "$1"; then
	echo "File exists"
	echo "Check passsed"
else
	echo "File does not exist"
	echo "Check failed"
	exit 1
fi
