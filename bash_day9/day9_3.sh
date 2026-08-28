#1/bin/bash
#"${!#}" - 
if [ "$#" -eq 1 ] && [ -f "$1" ]; then
	echo "File exists: $1"
	exit 0
fi
echo "Error:Need add file/Need add just 1 file/No such file $1 in directory"
exit 1
