#!/bin/bash

##Variables
name="Alex Smith" 
echo "$name" 
echo '$name'

##Command substitution
today=$(date) 
echo "Today: $today" 
echo "Current date: $(date)"

##Exit status
echo "hello" 
echo $?

##Conditions
if [ -f test.txt ]; then 
	echo "test file exists" 
else 
	echo "test file does not exist" 
fi

if [ -d backup ]; then 
	echo "backup directory exists" 
else 
	echo "backup directory does not exist" 
fi

##AND(&&) / OR(||) 
if [ -d backup ] && [ -f test.txt ]; then 
	echo "directory and file exists" 
else 
	echo "directory or file does not exist" 
fi

##Arguments
echo "Script: $0" 
echo "First: $1" 
echo "Second: $2" 
echo "Third: $3" 
echo "Number of arguments: $#" 
echo "All arguments: $@"

##Loop through arguments
for arg in "$@"; do 
	if [ -f "$arg" ]; then 
		echo "$arg exists" 
	else 
		echo "$arg does not exist" 
	fi 
done
