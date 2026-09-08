#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
for file in "${files[@]}"; do
	if [[ "$file" == *.sh ]]; then
		echo "Shell: $file"
	else
		echo "Other: $file"
	fi
done
