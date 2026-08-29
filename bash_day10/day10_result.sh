#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need just one argument"
	exit 1
fi
[ -f "$1" ]
result=$?
echo "Check result: $result"
if [ "$result" -eq 0 ]; then
	echo "File check passed"
else
	echo "File check failed"
	exit 1
fi

