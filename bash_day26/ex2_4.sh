#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <filename>"
	exit 1
fi

create_copy() {
	if [ -f "$1" ]; then
		cp "$1" "$(date +%Y-%m-%d)_$1"
	else
		echo "Error: file does not exist"
		exit 1
	fi
}
create_copy "$1"
