#!/bin/bash

#-------------------------------------------->> valida cantidad de arg. de entrada
if ! [ $# -eq 2 ];then 
	echo "cantidad de argumentos invalida:$#"
	echo "Ingresa dos cadenas:la primera va a reemplazar a la segunda"
	exit 1
fi

A=$1
B=$2
INPUT=$(cat lorem.txt) 

OUTPUT=$(echo ${INPUT//$A/$B}) # se reemplaza la primer subcadena (primer argumento) por la segunda(segundo argumento)

echo "$OUTPUT"
