#!/bin/bash

#-------------------------------------------------------------------
#Indicador estadistico de longintud de oraciones
#(la mas larga,la mas corta y el promedio de longitud)
#-------------------------------------------------------------------

INPUT=("$(echo ${@//./. })") #-->"." reemplaza por ". "
CONTADOR=0  
PUNTO='([.])$' #---------------->termina en "."
declare -a oraciones
declare -a longitudes

#---Agrego a lista(longitudes)cantidad de palabras por oracion-------

for palabra in $INPUT;do 
	acumulador=("")
	if ! [[ $palabra =~ $PUNTO ]];then          # palabra sin punto: se suma palabra al array acumulador y suma 1 al contador.
		let CONTADOR=$(echo $CONTADOR)+1
		acumulador+="$palabra "
	elif [[ $palabra =~ $PUNTO ]];then		# palabra con punto al final: suma 1 al contador, agrega el contenido de $contador  
		let CONTADOR=$(echo $CONTADOR)+1	# al array "longitudes" y restablece contador a 0.
		longitudes+=("$(echo ${CONTADOR}) ")	# suma la palabra al "acumulador" y luego agrega todo el contenido de "acumulador"
		CONTADOR=0				# al array "oraciones".
		acumulador+="$palabra "
		oraciones+="${acumulador[@]}"
		acumulador=""
	fi
done
#--------------------------------------------------------------------

#---Oraciones de mayor y menor longitud------------------------------

LARGA=${longitudes[0]} # inicializo variable que va a contener el indice de la oracion mas larga.
CORTA=${longitudes[0]} # variable contenedora de indice de oracion mas corta
INDICE_BUCLE=1  # cuenta el numero de iteracion en el ciclo for,para determinar el indice que se agregara en $INDICE_LARGO o $INDICE_CORTO
INDICE_LARGO=1	# contiene el indice de la oracion mas larga
INDICE_CORTO=1	# contiene el indice de la oracion mas corta
for i in ${longitudes[@]};do
	if [[ $i -ge $LARGA ]];then	# si la longitud es igual o mayor que $LARGA actualiza los valores de $LARGA y $INDICE_LARGO 
		LARGA=$i			
		INDICE_LARGO=$INDICE_BUCLE
	elif [[ $i -le $CORTA ]];then		# si la longitud es igual o menor que $CORTA , actualiza los valores de $CORTA y $INDICE_CORTO
		CORTA=$i
		INDICE_CORTO=$(echo $INDICE_BUCLE)
	fi
	let INDICE_BUCLE=$INDICE_BUCLE+1   # suma 1 al valor de $INDICE_BUCLE por cada iteracion del bucle 
done
echo "---------------------------------------------------------------------"
echo "La oracion mas larga es la ${INDICE_LARGO}a. y tiene $LARGA palabra/s."
echo "La oracion mas corta es la ${INDICE_CORTO}a. y tiene $CORTA palabra/s."
#--------------------------------------------------------------------

suma=0
cantidad=0
for valor in ${longitudes[@]}  # ciclo que suma los valores(longitudes) contenidos en el array "longitudes" y 
do				# cuenta cantidad de elementos que contiene dicho array.
	suma=$((suma+valor))
	cantidad=$((cantidad+1))
done

let promedio=$suma/$cantidad

echo "El promedio de longitud es de $promedio palabra/s"
echo "----------------------------------------------------------------------"

