# DAY 12 — Bash Functions + Exit Status + Find

## 1. Functions

function_name() {
    commands
}

function_name

Функцию можно вызвать в любом месте после её объявления.

### Аргументы функции

greet() {
    echo "Hello, $1 from $2"
}

greet Alex Kyiv

Внутри функции:

$1 = Alex
$2 = Kyiv

Аргументы функции независимы от "$1", "$2" самого скрипта.

## 2. local

greet() {
    local name="Alex"
}

"local" ограничивает область действия переменной функцией.


## 3. return

check_file() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

return 0 → функция успешна
return != 0 → функция завершилась с ошибкой

"return" - завершает функцию, но не весь скрипт.


## 4. Function + if

if check_file "$1"; then
    echo "File exists"
else
    echo "File does not exist"
fi

Правило:

0     → then
не 0  → else

Неважно, "1", "2" или "99" — любое ненулевое значение для "if" является FALSE.


## 5. return vs exit

return 1 → закончить функцию
exit 1   → закончить весь скрипт

## 6. $?

"$?" - "exit status" последней выполненной команды.

check_file "$1"
result="$?"

Здесь "result" получает статус "check_file".

Но:

check_file "$1"
echo "Something"
result="$?"

теперь "result" получает статус "echo".

Главное правило:

"$?" - не хранит историю ошибок. Он хранит только статус последней выполненной команды.

# FIND

## Базовая конструкция

find .

"." - текущая директория.

Поиск выполняется рекурсивно.


## -name

find . -name "*.sh"

Поиск объектов по имени.

## -type

-type f - обычный файл.

-type d - директория.

Пример:

find . -type f -name "*.sh"

## -maxdepth

find ./scripts -maxdepth 1 -type f -name "*.sh"

Ограничивает глубину поиска.


## -size

find . -type f -size +10M

больше 10 MB.

find . -type f -size -10M

меньше 10 MB.


## -mtime

find . -type f -mtime -1

изменённые недавно, менее суток по критерию "mtime".

find . -type f -mtime +7

старые файлы по критерию "mtime".

"mtime" смотрит на файловую систему, а не на Git commits.

## -mmin

find . -type f -mmin -30

изменены менее 30 минут назад.

find . -type f -mmin +30

старше 30 минут по критерию "mmin".

## -exec

find . -type f -name "*.sh" -exec echo "Found: {}" \;

-exec → выполнить команду
{}     → текущий найденный объект
\;     → конец команды

Пример:

find . -type f -name "*.sh" -exec ls -lh {} \;

Для каждого найденного файла выполняется "ls -lh".

---

## Итоговый пример

find . -type f -name "*.sh" -mmin -30 -exec echo "FOUND: {}" \;

Логика:

find
→ где искать
→ какой тип
→ какое имя
→ какое время
→ что сделать с найденным объектом

### Day 12 — ключевые понятия

local
function arguments
return
exit
if function
exit status
$?
find
-name
-type
-maxdepth
-size
-mtime
-mmin
-exec
{}
