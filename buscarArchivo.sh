#!/bin/bash


elif [ $# -eq 1 ]; then
	archivo=$1
	ruta=$PWD
else
	archivo=$1
	ruta=$2
fi

ls $ruta &> /dev/null

if [ $? -eq 2 ]; then
	echo "La ruta es inválida"
	exit 2
fi

bool="F"

for archivo in $(ls $ruta); do
	if [ "$archivo" == "$1" ]; then
		bool="V"
	fi
done


if [ "$bool" == "V" ]; then
	echo -e "El archivo existe"
else
	echo -e "El archivo no existe :("
fi
