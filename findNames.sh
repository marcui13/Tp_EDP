#!/bin/bash

#_________________________________________________________
# Identificacion de nombres propios(formato: Nnnnnnn)
#aunque la palabra no sea un nombre propio realmente.


TEXTO=$@
FORMATO='^([A-Z][a-z]{1})'
FORMATO2='([A-Z])$'
declare -a nombres

for i in $TEXTO;
do
	longPalabra="$(echo ${#i})"
	if [[ $i =~ $FORMATO ]] && ! [[ $i =~ $FORMATO2 ]];then
		nombres+=("$i ")			
	fi
done

echo "------------------------------------------------"

echo "${#nombres[@]} nombre/s encontrado/s:"

for i in ${nombres[@]}
do
	echo "$i "
done

echo "------------------------------------------------"


