#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <username>"
	exit 1
fi
createuser() {
	if id "$1" >/dev/null; then
		echo "User already exist"
		sudo usermod -aG users "$1"
	else
		sudo useradd -m -s /bin/bash "$1"
		sudo usermod -aG users "$1"
	fi
}
createuser "$1"
echo "User "$1" was add to users group"
