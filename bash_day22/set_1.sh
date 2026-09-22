#!/bin/bash
set -u
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument"
	exit 1
fi
directory=$1
echo "Path: $director"
