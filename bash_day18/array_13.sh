#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
is_shell_file() {
	if [[ "$1" == *.sh ]]; then
		return 0
	else
		return 1
	fi
}
for file in "${files[@]}"; do
	if is_shell_file "$file"; then
		echo "$file"
	fi
done
