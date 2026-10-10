#!/bin/bash
if ss -tuln | grep -F ':22 ' &>/dev/null; then
	echo "Port 22 is open"
else
	echo "Port 22 is closed"
fi

