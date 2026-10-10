#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 arugment <file>"
	exit 1
fi
awk '$7 > max { max=$7 } END { print "Maximum:", max}' "$1"
