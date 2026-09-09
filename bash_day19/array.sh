#!/bin/bash
files=("app.sh" "config.conf" "server.log" "backup.sh" "nginx.conf")
unset 'files[1]' # не "${files[1]}"
[[ -v 'files[1]' ]] # ne "${files[1]}"
