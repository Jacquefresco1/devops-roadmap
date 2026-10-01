#!/bin/bash
files=$(find "$1" -type f -name "*.sh" -mtime -1)
files_name=$(echo "$files" | awk -F '/' '{ print $NF }')
echo "$files_name"
