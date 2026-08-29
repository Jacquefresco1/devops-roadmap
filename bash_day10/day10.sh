#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need to be 2 arguments"
	exit 1
fi
case "$1" in
	status)
		if [ -f "$2" ]; then
			echo "Regular file"
		elif [ -d "$2" ]; then
			echo "Directory"
		else
			echo "Does not exist"
			exit 1
		fi
	;;
	check)
		if [ -f "$2" ]; then
                        echo "File exist: $2"
                else
                        echo "File does not exist: $2"
			exit 1
                fi
	;;
	exists)
		if [ -e "$2" ]; then
                        echo "Object exist: $2"
                else
                        echo "Object does not exist: $2"
                	exit 1
		fi
	;;
	*)
		echo "Command does not exist"
		exit 1
	;;
esac

