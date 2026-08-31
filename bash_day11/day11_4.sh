#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments"
	exit 1
fi
greet() {
	echo "Hello, $1 from $2"
}
greet "$1" "$2"
