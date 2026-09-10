#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
#grep -E "200$" "$1"
#grep -E "5[0-9]{2}$" "$1"
#grep -E "^192\.168" "$1"
#grep -E "POST|GET" "$1"
#grep -E -c "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" "$1"
#grep -E -v "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" "$1"
#grep -E "api/[a-zA-Z]+" "$1"
grep -E "[a-zA-Z]+/5" "$1"
