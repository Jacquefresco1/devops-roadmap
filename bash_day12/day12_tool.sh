#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments <command> <path>"
	exit 1
fi
check_file() {
	if [ -f "$1" ]; then
		echo "File exists: $1"
		return 0
	else
		echo "File does not exist: $1"
		return 1
	fi
}
file_status() {
	if [ -f "$1" ]; then
		echo "Regular file"
		return 0
	elif [ -d "$1" ]; then
		echo "Directory"
		return 0
	else
		echo "Does not exist"
		return 1
	fi
}
case "$1" in
	check|Check)
		if check_file "$2"; then
			echo "Check passed"
		else
			echo "Check failed"
			exit 1
		fi
	;;
	status|Status)
		if file_status "$2"; then
			echo "Status check passed"
		else
			echo "Status check failed"
			exit 1
		fi
	;;
	*)
		echo "Unknown command"
		exit 1
	;;
esac
