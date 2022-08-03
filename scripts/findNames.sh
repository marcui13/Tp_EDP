#!/bin/bash

#_________________________________________________________
# Identificacion de nombres propios(formato: Nnnnnnn)
#aunque la palabra no sea un nombre propio realmente.


TEXTO=$@
FORMATO='^([A-Z][a-z]{1})'  # empieza con mayusculas y sigue con minusculas
FORMATO2='([A-Z])$'	# termina en mayusculas
declare -a nombres

for i in $TEXTO; #-------- recorre cada palabra ingresada y la compara con los patrones establecidos en $FORMATO y $FORMATO2
do
	if [[ $i =~ $FORMATO ]] && ! [[ $i =~ $FORMATO2 ]];then
		nombres+=("$i ")			# si cumple con la condicion , agrga la palabra al array nombres.
	fi
done

echo "------------------------------------------------"

echo "${#nombres[@]} nombre/s encontrado/s:"      

for i in ${nombres[@]} # muestra el contenido del array un elemento por linea.
do
	echo "$i "
done

echo "------------------------------------------------"

