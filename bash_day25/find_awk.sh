#!/bin/bash
awk '$NF==403 || $NF==500 { print $1}' access.log
