#!/bin/bash
greet() {
	if [ "$#" -ne 2 ]; then
		echo "Error: need 2 arguments"
		exit 1
	fi
	echo "Hello, $1 from $2"
}
greet Alex Kyiv
