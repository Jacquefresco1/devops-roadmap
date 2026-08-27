#!/bin/bash
case "$1" in
	start)
	echo "Starting"
	;;
	stop)
	echo "Stoping"
	;;
	restart)
	echo "Restarting"
	;;
	*)
	echo "Unknown command"
	;;
esac
