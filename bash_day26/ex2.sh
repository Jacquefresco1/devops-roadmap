#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <file>"
	exit 1
fi
awk '
$5=="\"GET" { get_count++ }
$5=="\"POST" { post_count++ }
$5=="\"DELETE" { delete_count++ }
END {
print "GET in file: " (get_count ? get_count : 0) # конструкция с count ? count : 0 - нужна, что бы в случае если ничего не найдено, вывести 0, а не пустую строку, новое для меня!!
print "POST in file: " (post_count ? post_count : 0)
print "DELETE in file: " (delete_count ? delete_count : 0)
}' "$1"
