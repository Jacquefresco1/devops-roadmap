#!/bin/bash
ps aux | awk '$1!="USER" {print}' |  wc -l
ps aux | awk 'NR>1' | wc -l
