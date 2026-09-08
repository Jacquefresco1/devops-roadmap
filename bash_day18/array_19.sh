#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
show_files() {
	for file in "$@"; do
		echo "$file"
	done
}
show_files "${files[@]}"
