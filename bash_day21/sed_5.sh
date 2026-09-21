#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
sed -i.save 's/403/FORBIDDEN/g' "$1"
