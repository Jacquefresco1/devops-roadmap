#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh" "nginx.conf")
shell_files=()
config_files=()
for file in "${files[@]}"; do
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
echo "${shell_files[@]}"
echo "${config_files[@]}"
