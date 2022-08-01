#!/bin/bash

INPUT=$(cat lorem.txt)

PUNTO='([.]$)' #-----------------------termina en punto

oraciones=("Oracion numero 0!")  #-------lista con oraciones 

#-------construccion de lista con oraciones separadas e identificadas.

for palabra in $INPUT;do
	declare -a acumulador
	if ! [[ $palabra =~ $PUNTO ]];then
		acumulador+="$palabra "
	else
		acumulador+="$palabra "
		oraciones+=("${acumulador[@]}")
		acumulador=""
	fi	
done

#----------------------------------------------------------------------
replace=$( tr "\n" "@" < lorem.txt ) #identifico cada salto de linea. 

formating=("$(echo ${replace//@/ @ })")

#--construccion de lista de oraciones separadas por parrafos-----------

parrafos=""
IDENTIFICADOR='([@])'

for palabra in $formating;do
	declare -a acumulador
	if ! [[ $palabra =~ $IDENTIFICADOR ]];then
		acumulador+="$palabra "
	else
		parrafos+=("${acumulador[@]}")
		acumulador=""
	fi
done
#------------------------------------------------------------------------

function select_oracion(){
	read -p "Que numero de oracion desea consultar? " valor
	echo "${oraciones[$valor]}"
}

function select_parrafo(){
	read -p "Que numero de parrafo desea consultar? " valor
        echo "${parrafos[$valor]}"	
}

echo "Que deseas consultar? "

select funcion in oracion parrafo
do
	case $funcion in
		oracion)
			select_oracion
		;;
		parrafo)
			select_parrafo
		;;
		*)
			echo "opcion invalida: $REPLY"
		;;
	esac
	break
done
