#!/bin/bash
if [ "$#" -lt 2 ]; then
        echo "Error: need at least 2 arguments <directory> <pattern>"
        exit 1
fi
directory="$1"
shift
overall_status=0
check_files() {
        files=$(find "$1" -type f -name "$2")
        local status=$?
        if [ "$status" -ne 0 ]; then
                return 2
        elif [ -z  "$files" ]; then
                return 1
        else
                return 0
        fi
}
for pattern in "$@"; do
        check_files "$directory" "$pattern"
        status=$?
        echo "Checking: $pattern"
        if [ "$status" -eq 2 ]; then
                echo "Status: ERROR"
                overall_status=2
        elif [ "$status" -eq 1 ]; then
                echo "Status: NOT FOUND"
                if [ "$overall_status" -eq 0 ]; then
                        overall_status=1
                fi
        else
                number=$(echo "$files" | wc -l)
                case "$pattern" in
                        *.sh)
                                echo "Type: Shell"
                                echo "Found: $number"
                        ;;
                        *.conf)
                                echo "Type: Config"
                                echo "Found: $number"
                        ;;
                        *.log)
                                echo "Type: Log"
                                echo "Found: $number"
                        ;;
                        *)
                                echo "Type: Other"
                                echo "Found: $number"
                        ;;
                esac
        fi
done
if [ "$overall_status" -eq 2 ]; then
        echo "System: ERROR"
elif [ "$overall_status" -eq 1 ]; then
        echo "System: ATTENTION"
else
        echo "System: OK"
fi
