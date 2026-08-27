#!/bin/bash
if [ "$1" = "Start" ] || [ "$1" = "start" ]; then
	echo "Starting"
elif [ "$1" = "Stop" ] || [ "$1" = "stop" ]; then
	echo "Stoping"
elif [ "$1" = "Restart" ] || [ "$1" = "restart" ]; then
	echo "Restarting"
else
	echo "Unknown command"
fi
