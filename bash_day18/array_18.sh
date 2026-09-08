#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh" "nginx.conf")
check_file() {
	if [[ "$1" == *.sh ]]; then
		echo "Shell: $1"
	else
		echo "Other: $1"
	fi
}
for file in "${files[@]}"; do
	check_file "$file"
done
