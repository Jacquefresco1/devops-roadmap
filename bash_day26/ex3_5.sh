#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
rights_check() {
	if [ -f "$1" ]; then
		rights=$(stat -c "%a" "$1")
		if [ "$rights" = "777" ]; then
			echo "WARNING: rights are too open"
		else
			echo "OK: rights $rights"
		fi
	else
		echo "Error: file does not exist"
		exit 1
	fi
}
rights_check "$1"
