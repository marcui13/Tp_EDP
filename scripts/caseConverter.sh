#!/bin/bash

INPUT=$(cat lorem.txt)
OUTPUT=""  # array donde se almacenará el texto resultante.
LONG=${#INPUT}

for ((i=1; i<=LONG; i++));do
	CHAR=${INPUT:$i-1:1}
	if [[ "$CHAR" =~ [a-z] ]]; then # se compara si el caracter está en minuscula, se convierte a mayusculas
		OUTPUT+=${CHAR^}
	else
		OUTPUT+=${CHAR,}	# si esta en mayusculas , se convierte a minusculas.
	fi
done

echo $OUTPUT
