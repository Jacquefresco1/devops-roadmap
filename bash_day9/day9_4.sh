#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Error: needs 2 arguments"
	exit 1
fi
if [ "$#" -eq 2 ] && [ "$1" != "check" ]; then
	echo "Unknown command"
	exit 1
fi
if [ "$#" -eq 2 ] && [ "$1" = "check" ]; then
	echo "Checking $2"
	exit 0
fi

# более точная версия

#if [ "$#" -ne 2 ]; then
#        echo "Error: needs 2 arguments"
#        exit 1
#fi
#if [ "$1" != "check" ]; then - с первого if мы уже понимает что файлов 2, по этому повторно указывать что их должно быть два, нам не нужно
#        echo "Unknown command"
#        exit 1
#fi

# Исходя из пердыдущих if, на этот шаг мы можем попасть только при условии выполнения двух предыдущих. То есть, аругмента 2 и первый из них "check"
#echo "Checking $2"
#exit 0
#fi
