#!/bin/bash
if [ "$#" -ne 1 ];  then
	echo "Error: need 1 argument <file>"
	exit 1
fi
#sed -i.old 's/304/200/g' "$1"
#sed '/INVALID/d' "$1"
#sed '2d' "$1"
sed '2,5p' "$1"
sed -n '2,5p' "$1"
