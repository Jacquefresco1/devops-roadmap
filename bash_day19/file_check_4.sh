#!/bin/bash

declare -A types
types["*.sh"]="Shell"
types["*.conf"]="Config"
types["*.log"]="Logs"

if [[ -v 'types["*.sh"]' ]]; then
    echo "*.sh -> exists"
else
    echo "*.sh -> does not exist"
fi

if [[ -v 'types["*.yaml"]' ]]; then
    echo "*.yaml -> exists"
else
    echo "*.yaml -> does not exist"
fi
