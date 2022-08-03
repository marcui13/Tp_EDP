#!/bin/bash

INPUT=$(cat lorem.txt)
declare -a count #--------------------array que almacena las palabras del texto con 4 o mas caracteres.
FORMATEO=$(echo ${INPUT//[;.,]/ })  # elimino puntos , comas y puntocoma para evitar contar longitudes erroneas.

for palabra in $FORMATEO;do 	#---------- sumo al array solo las palabras que tienen 4 o mas caracteres.
	if [[ ${#palabra} -ge 4 ]]
	then
		count+=("$palabra")
	fi
done

echo ${count[@]} > texto.txt #------------- el contenido del array "count" se agrega al archivo texto.txt

echo "------TOP 10 de aparicion de palabras---------"

sed 's/\s/\n/g'  texto.txt | sort | uniq  -c | sort -n -r | head # de texto.txt se distribuye cada palabra en una linea independiente
								# se ordena y cuentan las apariciones.Se muestra solo una vez la palabra 
								#y ordena por numero de apariciones(primero las que mas aparecen). 
								

echo "----------------------------------------------"


























