#!/bin/bash
IN=$(sed '/^$/d' lorem.txt > lorem2.txt) #---------elimina las lineas en blanco entre parrafos y guarda el contenido en un nuevo archivo.
INPUT=$(cat lorem2.txt) #-------------guarda en la variable el contenido del archivo.
PUNTO='([.]$)' #-----------------------REGEX: termina en punto

oraciones=("")  #-------lista con oraciones 

#-------construccion de lista con oraciones separadas e identificadas.

for palabra in $INPUT;do
	declare -a acumulador
	if ! [[ $palabra =~ $PUNTO ]];then #si la palabra no termina en punto la agrega al acumulador.
		acumulador+="$palabra "
	else				#si la palabra termina en punto la agrega a la oracion,agrega la oracion a lista de oraciones y reinicia el acumulador.
		acumulador+="$palabra "
		oraciones+=("${acumulador[@]}")
		acumulador=""
	fi	
done

#----------------------------------------------------------------------
replace=$( tr "\n" "@" < lorem2.txt ) #identifico cada salto de linea con '@' 
formating=("$(echo ${replace//@/ @ })") #reemplaza '@' por ' @ '

#--construccion de lista de oraciones separadas por parrafos-----------

parrafos=""  #---------------lista de parrafos
IDENTIFICADOR='([@])' #-------cada parrafo termina con un '@'

for palabra in $formating;do
	declare -a acumulador
	if ! [[ $palabra =~ $IDENTIFICADOR ]];then       #si la palabra no termina con '@'la agraga al acumulador.
		acumulador+="$palabra "
	else
		parrafos+=("${acumulador[@]}")		#cuando se topa con un '@' agrega la lista acumulada al array 'parrafos'
		acumulador=""
	fi
done
#------------------------------------------------------------------------

function select_oracion(){  #------------------------------------pide eleccion de numero(indice) de oracion consultar y la muestra por pantalla
	read -p "Que numero de oracion desea consultar? " valor   
	echo "${oraciones[$valor]}"
}

function select_parrafo(){ #-------------------------------------pide eleccion de numero de parrafo a consultar y lo muestra por pantalla.
	read -p "Que numero de parrafo desea consultar? " valor
        echo "${parrafos[$valor]}"	
}

PS3="Que deseas consultar? "

select funcion in oracion parrafo #------------select: ejecuta funciones dependiendo la eleccion del usuario.
do
	case $funcion in
		oracion)
			select_oracion
		;;
		parrafo)
			select_parrafo
		;;
		*)
			echo "opcion invalida: $REPLY" # si se ingresa una opcion no valida(fuera del rango)
		;;
	esac
	break
done
