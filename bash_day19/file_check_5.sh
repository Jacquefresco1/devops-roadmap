#!/bin/bash
declare -A types
types["*.sh"]="Shell"
types["*.conf"]="Config"
types["*.log"]="Logs"
types["*.yaml"]="YAML"
files=("*.sh" "*.yaml" "*.log")
for pattern in "${files[@]}"; do
	echo "$pattern -> ${types[$pattern]}"
done

