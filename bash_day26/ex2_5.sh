#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
count_lines() {
	count1=$(grep -Ec "^#" "$1") # вариант 1
	count2=$(grep -E ".*" "$1" | wc -l) # можно и так, вариант 2
	count_difference=$(($count2 - $count1))
	echo "$count_difference"
}
count_lines "$1"
