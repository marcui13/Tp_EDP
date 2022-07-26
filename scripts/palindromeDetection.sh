#!/bin/bash

if [ $# -eq 0 ]
then
        echo "No se ingreso ninguna cadena"
else
        #Comparo si la variable de entrada es igual a su reverso
        if [ $1 == $(echo $1 | rev) ]
        then
                echo "$1 es un palindromo"
        else
                echo "$1 no es un palindromo"
        fi
fi

