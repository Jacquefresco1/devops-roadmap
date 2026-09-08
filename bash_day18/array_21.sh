#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh" "nginx.conf" "deploy.sh")
shell_files=()
config_files=()
classify_files() {
	for file in "$@"; do
		case "$file" in
			*.sh)
				shell_files+=("$file")
			;;
			*.conf)
				config_files+=("$file")
			;;
			*)
			;;
		esac
	done
}
classify_files "${files[@]}"
echo "${shell_files[@]}"
echo "${config_files[@]}"
