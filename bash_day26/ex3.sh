#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Error: need 1 argument <directory>"
	exit 1
fi
find "$1" -type f -name "*.sh" -exec awk '
FNR == 1 && $1 == "#!/bin/bash" { count++ } END { print count }' {} +

