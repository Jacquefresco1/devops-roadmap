#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments"
	exit 1
fi
case "$1" in
	check|Check)
		[ -f "$2" ]
		result="$?"
		echo "Check result: $result"
			if [ "$result" -eq 0 ]; then
				echo "File check passed"
			else
				echo "File check failed"
				exit 1
			fi
	;;
	exists|Exists)
		[ -e "$2" ]
                result="$?"
                echo "Exists result: $result"
                        if [ "$result" -eq 0 ]; then
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
