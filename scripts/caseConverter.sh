#!/bin/bash

INPUT=$(cat lorem.txt)
FIN=""
LONG=${#INPUT}

for ((i=1; i<=LONG; i++));do
	CHAR=${INPUT:$i-1:1}
	if [[ "$CHAR" =~ [a-z] ]]; then
		FIN+=${CHAR^}
	else
		FIN+=${CHAR,}
	fi
done

echo $FIN
