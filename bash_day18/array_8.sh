#!/bin/bash
files=("app.sh" "config.conf" "server.log")
unset 'files[1]'
if [[ -v 'files[1]' ]]; then
	echo "Element exists: ${files[1]}"
else
	echo "Element does not exist"
fi
