#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <directory>"
	exit 1
fi
check_sh_system() {
	files=$(find "$1" -type f -name "*.sh")
        local status=$?
        if [ "$status" -ne 0 ]; then
                echo "Find error"
                return 2
        elif [ -z "$files" ];  then
                echo "*.sh not found"
                return 1
        else
                echo "*.sh files found"
                return 0
        fi
}
check_sh_system "$1"
status=$?
check_system() {
	files_1=$(find "$1" -type f -name "*.log")
	local status_1=$?
	if [ "$status_1" -ne 0 ]; then
		echo "Find error"
		return 2
	elif [ -z "$files_1" ]; then
		echo "Logs not found"
		return 1
	else
		files_2=$(find "$1" -type f -name "*.log" -size +10M -mtime +7)
		local status_2=$?
		if [ "$status_2" -ne 0 ]; then
			echo "Find error" # не совсем понимаю что здесь может сломаться, если первая проверка с логом прошла успешно
			return 2
		elif [ -n "$files_2" ]; then
			echo "Problems logs founded"
			return 1
		else
			echo "System OK"
			return 0
		fi
	fi
}
check_system "$1"
status_1=$?
if [ "$status" -eq 2 ] || [ "$status_1" -eq 2 ]; then
	echo "Find error"
elif [ "$status" -eq 1 ] || [ "$status_1" -eq 1 ]; then
	echo "System needs attention"
else
	echo "System OK"
fi
