#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
awk -F '=' '$1=="db_port" { print $2 }' "$1"
awk_end() {
	awk -F '=' '
	$1=="max_connections" { sum += $2 }
	$1=="timeout" { sum += $2 }
	END { print sum }' "$1"
}
awk_end "$1"
