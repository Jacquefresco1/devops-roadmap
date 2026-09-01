#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments <command> <number>"
	exit 1
fi
double() {
	if [[ "$1" =~ ^[0-9]+$ ]]; then
		local result=$(( $1 * 2 ))
		echo "Double: $result"
		return 0
	else
		echo "Error: invalid number"
		return 1
	fi
}
case "$1" in
	double|Double)
		if double "$2"; then
			echo "Operation passed"
		else
			echo "Operation failed"
			exit 1
		fi
	;;
	*)
		echo "Unknown command"
		exit 1
	;;
esac
