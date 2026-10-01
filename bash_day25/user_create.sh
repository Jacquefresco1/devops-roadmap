#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: nee 1 argument <username>"
	exit 1
fi
if id "$1" &>/dev/null; then
	echo "Error: user already exists"
	exit 1
else
	sudo useradd -m -s /bin/bash "$1"
fi
