#!/bin/bash
case "$1" in
	start|Start)
	echo "Starting"
	;;
	stop|Stop)
	echo "Stopping"
	;;
	restart|Restart)
	echo "Restarting"
	;;
	status|Status)
	echo "Status"
	;;
	*)
	echo "Unknown command"
	;;
esac
