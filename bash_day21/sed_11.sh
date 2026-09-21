#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
grep -E '^(port|db_port)=' "$1" | sed 's/^[a-z_]*//'
