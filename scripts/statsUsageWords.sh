#!/bin/bash

INPUT=$(cat lorem.txt)
declare -a count
FORMATEO=$(echo ${INPUT//[;.,]/ })

for palabra in $FORMATEO;do
	if [[ ${#palabra} -ge 4 ]]
	then
		count+=("$palabra")
	fi
done

echo ${count[@]} > texto.txt

echo "------TOP 10 de aparicion de palabras---------"

sed 's/\s/\n/g'  texto.txt | sort | uniq  -c | sort -n -r | head

echo "----------------------------------------------"


























