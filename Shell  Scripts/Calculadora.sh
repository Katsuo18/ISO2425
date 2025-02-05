#!/bin/bash
# Miguel Muñoz Correa
# Fecha: 03-02-2025
clear
echo "Trabajo Realizado por Miguel Muñoz Correa"
if [ $# -eq 2 ]; then
	echo ""
else
	echo "No tiene dos parametros "
	exit
fi
if [ -f $1 ];then
	echo "El fichero existe el programa se va a salir"
	exit
else
	echo "No existe el archivo"
fi

Option=0
while $Option != $2 ; do
	echo "Para la Suma=S"
	echo "Para la Resta=R"
	echo "Para la Multiplicación=M"
	echo "Para la División=D"
	read -p "Dime la operacion dos numeros" Op Op1 Op2
	echo $Op $Op1 $Op2 >> $1

case $Op in
	"S")
		$result=$(($Op1+$Op2))
		echo "El resultado es $result"
	;;

	"R")
		$result=$(($Op1-$Op2))
		echo "El resultado es $result"
	;;

	"M")
		$result=$(($Op1*$Op2))
		echo "El resultado es $result"
	;;

	"D")
		$result=$(($Op1/$Op2))
		echo "El resultado es $result"
	;;

	*)
		echo "Ejecución Invalida"
	;;
esac
	ls -d $1
	cat $1
done
