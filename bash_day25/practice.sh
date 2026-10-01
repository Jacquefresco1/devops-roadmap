#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 arugumen <username>"
	exit 1
fi

ps -u "$1" # найти процессы конкретного пользователя
find=$(sudo grep -oi "a" /opt/report.txt)
number=$(echo -n "$find" | wc -l)
echo "$number" # проверяем сколько "аА" в файле, добавляем к echo "-n", что позволит убрать ошибку с выводом 1, если в файле нет ни одной "aA"
number1=$(sudo find /opt -type f -mmin -60)
if [ -z "$number1" ]; then
	number2=0
	echo "Files don't found. Files: $number2"
else
	echo "Files founded: $number1"
fi
sudo ss -tulnp | grep ':22 ' | sed -E 's/.*([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:[0-9]{2}).*/\1/'
