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
echo "Shell files: ${shell_files[@]}"
echo "Config files: ${config_files[@]}"
