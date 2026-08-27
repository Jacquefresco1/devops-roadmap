#!/bin/bash
#echo "Start"
#exit 0
#echo "Finish"
if [ -f test.txt ]; then
	echo "File exists"
	exit 0
else
	echo "File does not exist"
	exit 1
fi
