#!/bin/bash

RESULTADO=$( grep -v '\S' $1 | grep -v '\a' | wc -l)

echo La cantidad de lineas en blanco en el archivo $1 es de $RESULTADO
