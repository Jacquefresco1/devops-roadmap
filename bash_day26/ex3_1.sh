#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 artument <file>"
	exit 1
fi
check_file() {
	if [ ! -f "$1" ]; then
		echo "Error: file does not exist"
		exit 1
	else
		count1=$(grep -c '^$' "$1")
		count2=$(grep -vc '^$' "$1") # "^ *$" учитывает в том числе строки из пробелов, как пустые
		#count3=$(grep -c '.*' "$1") я бы общее количество выводил так, но ты просишь сделать через $(()). Сделаю
		count3=$((count1 + count2))
		echo "All lines: $count3"
		echo "Empty lines: $count1"
		echo "Not empty lines: $count2"
	fi
}
check_file "$1"
