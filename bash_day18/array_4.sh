#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh")
unset 'files[1]'
echo "${files[@]}"
