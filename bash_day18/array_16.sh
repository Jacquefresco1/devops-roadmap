#!/bin/bash
files=("app.sh" "config.conf" "server.log")
show_files() {
	echo "$1"
}
for file in "${files[@]}"; do
	show_files "$file"
done

