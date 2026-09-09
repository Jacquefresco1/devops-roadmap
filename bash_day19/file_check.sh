#!/bin/bash
declare -A types
types["*.sh"]="Shell"
types["*.conf"]="Config"
types["*.log"]="Logs"
types["*.txt"]="Text"

echo "${types["*.sh"]}"
echo "${types["*.conf"]}"
echo "${types["*.log"]}"
echo "${types["*.txt"]}"
echo "${types[@]}" # вывести все в одну строку, по сути тоже самое, только в одну строку
