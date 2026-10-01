#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: need 2 arguments <user name> <group name>"
	exit 1
fi
user_create() {
	if id  "$1" &>/dev/null; then
		echo "Error: user "$1" already exists"
		exit 1
	else
		sudo useradd -m -s /bin/bash "$1"
		status=$?
	fi
}
user_create "$1"
group_create() {
	if getent group "$1"
		echo "Error: group "$1" already exists"
		exit 1
	else
		sudo groupadd "$1"
		status1=$?
	fi
}
group_create "$2"
user_to_group() {
	if [ "$status" -eq 0 ] && [ "$status1" -eq 0 ]; then
		sudo usermod -aG "$2" "$1"
		sudo touch /opt/report.txt
			if [ -f /opt/report.txt ]; then
	 			sudo chown "$1":"$2" /opt/report.txt
				sudo chmod 640 /opt/report.txt
			fi
		else
			echo "Error: user or group does not exists"
			exit 1
	fi
}
user_to_group "$1" "$2"
