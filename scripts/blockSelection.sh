#!/bin/bash

#--TEXTO BASE-------------------
TEXTO=$(cat lorem.txt)

#creacion de array contenedor de oraciones
#if $1 == O

declare -a oraciones
FORMATO='([.]$)'
n=$1

for palabra in $TEXTO;do
	declare -a acumulador
	if ! [[ $palabra =~ $FORMATO ]];then
		acumulador+="$palabra "
	else
		acumulador+="$palabra "
		oraciones+="${acumulador[@]} "
		acumulador=""
	fi	
done

echo "${array[$n]}"



