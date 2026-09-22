#!/bin/bash
set -e
if [ "$#" -ne 1 ]; then
        echo "Error: need 1 argument <directory>"
        exit 1
fi
ls "$1"
echo "не должно вывестись"
