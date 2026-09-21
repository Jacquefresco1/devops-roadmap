#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
sed -E 's#.*\[([0-9]{2}\/[A-Za-z]{3}\/[0-9]{4})\].*#\1#' "$1"

