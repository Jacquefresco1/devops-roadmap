#!/bin/bash
files=("app.sh" "config.conf" "server.log")
files[1]="nginx.conf"

echo "${files[@]}"
