#!/bin/bash

if [ "$#" -ne 2 ]; then
        echo "Error: needs 2 arguments"
        exit 1
fi
if [ "$1" != "check" ]; then 
	echo "Unknown command"
        exit 1
fi
if [ -f "$2" ]; then
	echo "File exist: $2"
	exit 0
fi
echo "File does not exist: $2"
exit 1
