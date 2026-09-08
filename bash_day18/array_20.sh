#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh" "nginx.conf")
shell_files=()
find_shell_files() {
	for file in "$@"; do
		if [[ "$file" == *.sh ]]; then
			shell_files+=("$file")
		fi
	done
}
find_shell_files "${files[@]}"
echo "${shell_files[@]}"
