#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
unset 'files[1]'
echo "${files[0]}"
echo "${files[2]}"
echo "${files[@]}"
