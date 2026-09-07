#!/bin/bash
files=("app.sh" "config.conf" "server.log")
files[1]="nginx.conf"
for pattern in "${files[@]}"; do
	echo "$pattern"
done

