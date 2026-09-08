#!/bin/bash
array=("app.sh" "config.conf" "server.log")
unset 'array[1]'
if [[ -v 'array[1]' ]]; then
	echo "Element exists"
else
	echo "Element does not exist"
fi
