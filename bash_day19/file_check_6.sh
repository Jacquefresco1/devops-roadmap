#!/bin/bash
files=("app.sh" "nginx.conf" "server.log" "deploy.sg" "README.txt")
declare -A types
types["*.sh"]="Check script"
types["*.conf"]="Check config"
types["*.log"]="Check log"
process_files() {
	for pattern in "$@"; do
		case "$pattern" in
			*.sh)
				echo "$pattern -> ${types["*.sh"]}"
			;;

			*.conf)
				echo "$pattern -> ${types["*.conf"]}"
			;;
			*.log)
				echo "$pattern -> ${types["*.log"]}"
			;;
			*)
				echo "$pattern -> Unknown file type"
			;;
		esac
	done
}
process_files "${files[@]}"
