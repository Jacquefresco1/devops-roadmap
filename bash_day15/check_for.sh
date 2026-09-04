#!/bin/bash
if [ "$#" -eq 0 ]; then
	echo "Error: need at least 1 argument"
	exit 1
fi
for check in "$@"; do
	echo "$check"
done
