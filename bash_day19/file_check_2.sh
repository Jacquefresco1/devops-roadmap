#!/bin/bash
declare -A types
types["*.sh"]="Shell"
types["*.conf"]="Config"
types["*.log"]="Logs"
types["*.txt"]="Text"
types["*.sh"]="Bash Script"
types["*.yaml"]="YAML"
for pattern in "${!types[@]}"; do
	echo "$pattern -> ${types[$pattern]}"
done
