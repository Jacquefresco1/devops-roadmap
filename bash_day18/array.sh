#!/bin/bash
patterns=("*.sh" "*.conf" "*.log")
echo "${patterns[0]}"
echo "${patterns[1]}"
echo "${patterns[2]}"
files=("app.sh" "config.conf" "server.log" "readme.txt")
echo "${files[@]}"
patterns_1=("*.sh" "*.conf" "*.log" "*.txt" "*.yaml")
echo "${#patterns_1[@]}"
