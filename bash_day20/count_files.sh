#!/bin/bash
files=("app.sh" "nginx.conf" "server.log")
count_files() {
	for file in "$@"; do
		echo "File: $file"
	done
}
count_files "${files[@]}"
