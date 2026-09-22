#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
awk_200() {
	awk '$7=="200" { count ++ }
	END { print count }' "$1"
}
awk_200 "$1"
awk_201() {
	awk -F '"' '
	$3==" 200"{ count ++ }
	END { print count }' "$1"
}
awk_201 "$1"
awk_403() {
	awk '$7=="403" { count ++ }
	END {print count }' "$1"
}
awk_403 "$1"
