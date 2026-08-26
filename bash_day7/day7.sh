name="Jacque Fresco"
current_dir=$(pwd)
today=$(date)

printf '<%s>\n' "$name"
printf '<%s>\n' $name
echo "$current_dir"
echo "Я сейчас нахожусь здесь: $(pwd)"
echo "Сегодня: $today"
echo "hello"
echo $?
ls
echo $?
ls /this-does-not-exist
echo $?

ls
if [ $? -eq 0 ]; then
	echo "Команда успешна"
fi

ls /this-does-not-exist
if [ $? -eq 0 ]; then
	echo "Команда успешна"
fi
