#!/bin/bash
declare -A types
types["*.sh"]="Shell"
types["*.conf"]="Config"
types["*.log"]="Logs"
types["*.txt"]="Text"

for pattern in "${!types[@]}"; do
	echo "Pattern: $pattern"
	echo "Type: ${types[$pattern]}"
#	echo "$pattern -> ${types[$pattern]}" - альтернативный вывод
done
