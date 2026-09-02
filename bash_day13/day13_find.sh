#!/bin/bash
find_logs() {
	find . -type f -name "*.log" -size +10M -mtime +7 -exec echo "Found: {}" \;
}
if find_logs; then
	echo "Search completed"
else
	echo "Search failed"
	exit 1
fi
