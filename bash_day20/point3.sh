#!/bin/bash
files=("app.sh" "nginx.conf" "server.log" "deploy.sh" "README.txt" "backup.conf")
shell_files=()
config_files=()
find_shell_files() {
	for file in "$@"; do
		if [[ "$file" == *.sh ]]; then
			shell_files+=("$file")
		fi
	done
}
find_shell_files "${files[@]}"
find_config_files() {
	for file in "$@"; do
		 if [[ "$file" == *.conf ]]; then
			config_files+=("$file")
                 fi
        done
}
find_config_files "${files[@]}"
echo "Shell files: ${shell_files[@]}"
echo "Config files: ${config_files[@]}"
