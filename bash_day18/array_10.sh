#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
shell_files=()
for file in "${files[@]}"; do
	if [[ "$file" == *.sh ]]; then
		shell_files+=("$file")
	fi
done
echo "${shell_files[@]}"
echo "Shell files found: ${#shell_files[@]}"
