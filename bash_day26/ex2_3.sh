#!/bin/bash
ps aux | awk 'NR>1 && $1!="devops" {print $1}'| wc -l
