#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments <directory> <file extension>"
	exit 1
fi
files="*.$2"
find1=$(find "$1" -type f -name "$files")
for file in $find1; do
	stat $file -c "%n: %a,%U"
done

