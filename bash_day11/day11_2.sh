#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument"
	exit 1
fi
echo "Script: $1"
greet() {
	echo "Function: $1"
}
greet Alex
