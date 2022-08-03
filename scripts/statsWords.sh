#!/bin/bash

#-------------------------------------------------------------------
#Indicador estadistico de longitud de plabras.
#La mas larga,la mas corta y el promedio de longitud.
#-------------------------------------------------------------------

echo "--------------------------------------------------------"

declare -a longPalabras    # array donde se almacenan la longitud de cada palabra.
larga=$1    # variable que almacena la longitud de palabra mas larga
corta=$1	#variable que almacena la longitud de la palabra mas corta

if [ $# -eq 0 ] # valida que se ingresen argumentos
then
	echo "No se ingreso ninguna palabra!"
else
	for i in $@
	do
		a="$(echo ${#i}) "   # almacena la longitud de cada palabra iterada
		longPalabras+="$a"
		if [[ $a -ge $(echo ${#larga}) ]]     # si la longitud de la palabra iterada es igual o mayor a $larga, esta variable se actualiza
		then					# al valor de $a.
			larga=$i
		elif [[ $a -le $(echo ${#corta}) ]]   # si la long. de la palabra iterada es igual o menor que $corta, esta variable se actualiza 	
		then					# al valor de $a.
			corta=$i
		fi	
	done
	echo "la palabra mas larga es: $larga"
	echo "la palabra mas corta es: $corta"
	
fi

#------promedio de longitud de palabras-------------------------------
suma=0 # variable donde se almacena la suma de todas las longitudes en $longPalabras
cantidad=$#
for numero in $longPalabras
do
	suma=$((suma+numero))
done
promedio=$((suma/cantidad))
echo "la longitud promedio es de $promedio caracteres."

echo "--------------------------------------------------------------"

