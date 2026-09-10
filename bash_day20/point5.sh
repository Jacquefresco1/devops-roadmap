#!/bin/bash
files=("app.sh" "nginx.conf" "server.log" "deploy.sh" "README.txt")
declare -A actions
actions["*.sh"]="Shell check"
actions["*.conf"]="Config check"
actions["*.log"]="Log check"

process_file() {
        echo "Processing: $1"
        echo "Action: $2"
}

classify_files() {
        for file in "$@"; do
                case "$file" in
                        *.sh)
                                process_file "$file" "${actions["*.sh"]}"
                        ;;
                        *.conf)
                                process_file "$file" "${actions["*.conf"]}"
                        ;;
                        *.log)
                                process_file "$file" "${actions["*.log"]}"
                        ;;
                        *)
                                ;;
                esac
        done
}

classify_files "${files[@]}"
