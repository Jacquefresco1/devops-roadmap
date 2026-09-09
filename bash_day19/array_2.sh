#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
unset 'files[1]'
if [[ -v 'files[1] ]]; then
	echo "Element exists"
else
	echo "Element does not exist"
fi
