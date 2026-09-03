#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need one argument <directory>"
	exit 1
fi
check_system() {
	files=$(find "$1" -type f -name "*.log")
	local status=$?
	files_1=$(find "$1" -type f -name "*.log" -size +10M -mtime +7)
	local status_1=$?
	if [ "$status" -ne 0 ] || [ "$status_1" -ne 0 ]; then
		echo "Find error"
		return 2
	elif [ -z "$files" ] || [ -n "$files_1" ]; then
		echo "System needs attention"
		return 1
	else
		echo "System OK"
		return 0
	fi
}
check_system "$1"
status=$?

# Альтернатива, которая запускает 2 find, только при условии, что первый не пустой
#!/bin/bash
#if [ "$#" -ne 1 ]; then
#        echo "Error: need one argument <directory>"
#        exit 1
#fi
#
#check_system() {
#        files=$(find "$1" -type f -name "*.log")
#        local status=$?
#
#        if [ "$status" -ne 0 ]; then
#                echo "Find error"
#                return 2
#
#        elif [ -z "$files" ]; then
#                echo "System needs attention"
#                return 1
#
#        else
#                files_1=$(find "$1" -type f -name "*.log" -size +10M -mtime +7)
#                local status_1=$?
#
#                if [ "$status_1" -ne 0 ]; then
#                        echo "Find error"
#                        return 2
#
#                elif [ -n "$files_1" ]; then
#                        echo "System needs attention"
#                        return 1
#
#                else
#                        echo "System OK"
#                        return 0
#                fi
#        fi
#}
#
#check_system "$1"
#status=$?
#
#if [ "$status" -eq 0 ]; then
#        echo "System OK"
#elif [ "$status" -eq 1 ]; then
#        echo "WARNING: System needs attention"
#else
#        echo "CRITICAL: System check failed"
#fi
#
#
#if [ "$status" -eq 0 ]; then
#	echo "System OK"
#elif [ "$status" -eq 1 ]; then
#	echo "WARNING: System needs attention"
#else
#	echo "CRITICAL: System check failed"
#fi
