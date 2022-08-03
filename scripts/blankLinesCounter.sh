#!/bin/bash

RESULTADO=$( grep -v '\S' $1 | wc -l ) 

#'\S' matchea las lineas con algun caracter.
#'-v' invierte la seleccion.
#'wc -l' cuenta la cantidad de lineas. 

echo "La cantidad de lineas en blanco en el archivo $1 es de $RESULTADO"
