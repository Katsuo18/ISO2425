#!/bin/bash
# Miguel Muñoz Correa
# Fecha De Inicio: 05-02-2025
clear
if [ $# -ne 2 ]; then
	echo "Error no hay dos parametros"
	exit
fi

if [ -f $1 ]; then
	echo "Error el fichero ya existe"
	exit
fi
if [ ! -d $2 ]; then
	echo "Error no existe el directorio"
	exit
fi
arch$=(ls $2 | wc -l)
if [ $arch -eq 0 ]; then
	echo "El directorio $2 esta vacio"
	exit
fi
#Final del Control de Errores
echo "Autor: Miguel Muñoz Correa"

for fich in $2/*.txt; do
	line=$(cat $fich | wc -l)
	words=$(cat $fich | wc -w)
	if [ $line -ge 5 ];then
		echo $fich
		echo $fich >> $1
		echo "El fichero original tiene $words palabras" > $fich.q
		cat $fich >> $fich.q
	fi
done
	lineas=$(cat $1 | wc -l)
	echo "El fichero tiene $lineas lineas " >> $1
