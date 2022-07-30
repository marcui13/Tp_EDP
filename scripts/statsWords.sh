#!/bin/bash

#-------------------------------------------------------------------
#Indicador estadistico de longitud de plabras.
#La mas larga,la mas corta y el promedio de longitud.
#-------------------------------------------------------------------

echo "--------------------------------------------------------"

declare -a longPalabras
larga=$1
corta=$1

if [ $# -eq 0 ] 
then
	echo "No se ingreso ninguna palabra!"
else
	for i in $@
	do
		a="$(echo ${#i}) "
		longPalabras+="$a"
		if [[ $a -ge $(echo ${#larga}) ]]
		then
			larga=$i
		elif [[ $a -le $(echo ${#corta}) ]]
		then
			corta=$i
		fi	
	done
	echo "la palabra mas larga es: $larga"
	echo "la palabra mas corta es: $corta"
#	echo "longitud de c/palabras: $longPalabras"	
fi

#------promedio de longitud de palabras-------------------------------
suma=0
cantidad=$#
for numero in $longPalabras
do
	suma=$((suma+numero))
done
promedio=$((suma/cantidad))
echo "la longitud promedio es de $promedio caracteres."


echo "--------------------------------------------------------------"

