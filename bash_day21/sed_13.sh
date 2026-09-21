#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
grep -E "^db_" "$1" | sed 's/.*=//'
