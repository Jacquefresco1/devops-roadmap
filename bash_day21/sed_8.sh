#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
sed '/debug_mode/s/true/false/' "$1" # новая механика /паттерн/команда
