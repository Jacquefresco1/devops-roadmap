#!/bin/bash
file="config.conf"
if [[ "$file" == *.conf ]]; then
	echo "Config file"
else
	echo "Not config file"
fi

