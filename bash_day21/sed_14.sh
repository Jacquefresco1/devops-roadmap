#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
first() {
	grep -v "200$" "$1"| grep -E "^[0-9]"| sed -E 's/([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}).*/\1/'
}
first "$1"

second() {
	sed -E '/500/s/DELETE/REMOVE/' "$1"
}
second "$1"

third() {
	count=$(grep -cE "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" "$1")
	echo "$count"
}
third "$1"
