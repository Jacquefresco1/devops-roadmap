#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
grep -v '^[a-zA-Z]' "$1" | awk '{ count[$1]++ }
END { for (ip in count) print ip, count[ip] }'
