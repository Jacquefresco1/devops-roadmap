if [ -f test.txt ]; then
	echo "Файл существует"
else
	echo "Файла нет"
fi

if [ -f missing.txt ]; then
        echo "Файл существует"
else
        echo "Файла нет"
fi

[ -d backup ]
echo $?
[ -f backup ]
echo $?
[ -e backup ]
echo $?
