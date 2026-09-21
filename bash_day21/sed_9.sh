#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
grep -E '.*\=[0-9]{2,4}+$' "$1" #забыл добавить +$, -oE не нужно, так как мне нужна строка а не кусок, который совпадает.
