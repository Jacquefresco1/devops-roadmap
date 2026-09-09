#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh" "nginx.conf")
unset 'files[2]'
for file in "${files[@]}"; do
	echo "$file"
done
