#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments <command> <filename>"
	exit 1
fi
case "$1" in
	check)
	echo "Running check"
		if [ -f "$2" ]; then
        		echo "File exists $2"
		else
			echo "File does not exist: $2"
			exit 1
		fi
	;;
	exists)
	echo "Runnign exists"
		if [ -e "$2" ]; then
                        echo "Object exists $2"
                else
                        echo "Object does not exist: $2"
                        exit 1
                fi
	;;
	status)
	echo "Running status"
		if [ -e "$2" ]; then
                        echo "Object exists"
                else
                        echo "Object does not exist"
                        exit 1
                fi
	;;
	*)
	echo "Unknown command"
	exit 1
	;;
esac
