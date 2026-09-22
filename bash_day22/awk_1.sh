#!/bin/bash
awk_access() {
	awk '$NF==403 {print $1}' "$1"
	awk '$5=="\"GET" {count ++}
	END {print count}' "$1"
        awk 'NF!=7 {print NR,NF}' "$1" #у меня в файле access.log в принципе нет 9 полей, только 7 максимум. По этом>
}
awk_access access.log
awk_app() {
	awk -F '=' '
	$1=="port" {sum += $2}
	$1=="db_port" {sum += $2}
	END {print "Сумма: " sum}' "$1"
	awk '$1!="#" {count ++}
END {print "Количество строк, которые не начинаются с #: " count}' "$1"
}
awk_app app.conf
set -euo pipefail
trap 'echo "скрипт завершен"' EXIT
set_test() {
	if [ ! -f "$1" ]; then
		echo "Error: file not found"
		exit 1
	else
		count=$(awk 'END {print NR}' "$1") #здесь, я подсмотрел, так как было сложно дойти своим умом, что END может просто вывести количесто если добавить NR(я этого просто не знал). По этому из прошлого опыта, я спомнил wc -l "$1", но тогда выводит с именем файла, что тоже не особо подходит.
		echo "$count"
	fi
}
set_test "$1"
