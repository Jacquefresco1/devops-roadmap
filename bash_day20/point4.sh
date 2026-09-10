#!/bin/bash
files=("app.sh" "nginx.conf" "server.log" "deploy.sh" "README.txt")
declare -A actions
actions["*.sh"]="Run shell check"
actions["*.conf"]="Check configuration"
actions["*.log"]="Check logs"
process_files() {
	for file in "$@"; do
		case "$file" in
			*.sh)
				echo "$file -> ${actions["*.sh"]}"
			;;
			*.conf)
				echo "$file -> ${actions["*.conf"]}"
			;;
			*.log)
				echo "$file -> ${actions["*.log"]}"
			;;
			*)
				echo "$file -> Unknown file type"
			;;
		esac
	done
}
process_files "${files[@]}"
