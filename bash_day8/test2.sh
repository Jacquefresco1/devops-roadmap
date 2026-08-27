#!/bin/bash
#ls /this-does-not-exist
#if [ $? -ne 0 ]; then
#	echo "Command failed"
#	exit 1
#fi

#echo "Command succeeded"
#exit 0

if ls /this-does-not-exist; then
	echo "Command succeeded"
else
	echo "Command failed"
	exit 1
fi
