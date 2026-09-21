#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 arguments <file>"
	exit 1
fi
sed -n '4p;6p' "$1"
