#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argment <file>"
	exit 1
fi
sed -i.bak2 '/^old.*/d' "$1"
