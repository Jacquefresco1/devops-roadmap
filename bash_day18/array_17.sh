#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
check_file() {
	echo "$1"
}
for file in "${files[@]}"; do
	check_file "$file"
done
