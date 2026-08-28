#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Eror: needs excly 1 argument"
	exit 1
fi

echo "Checking: $1"
