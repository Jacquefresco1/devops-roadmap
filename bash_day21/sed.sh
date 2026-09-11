#!/bin/bash
access_log() {
	sed 's/GET/FETCH/g' "$1"
	sed '/403$/d' "$1"
	sed -n '1p;$p' "$1"
	sed -E 's/(^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}).*/\1/' "$1"
}
access_log "access.log"
sed -i.orig 's/10.0.0.5/MASKED_IP/g' "access.log"
