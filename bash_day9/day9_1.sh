#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Eror: needs 2 arguments <name> <city>"
	exit 1
fi

echo "Name: $1"
echo "City: $2"
