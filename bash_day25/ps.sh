#!/bin/bash
count=$(ps aux | awk '$1=="devops"' | wc -l)
echo "$count"
