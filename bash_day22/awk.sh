#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
awk_1() {
	awk '{ print $1 }' "$1"
}
awk_2() {
	awk '{ print $2 }' "$1"
}
awk_3() {
	awk '{ print $0 }' "$1"
}
awk_1 "$1"
awk_2 "$1"
awk_3 "$1"
