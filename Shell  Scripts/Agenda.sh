#!/bin/bash
# Miguel Muñoz Correa
# Fecha: 03-02-2025
clear

Option=0

while [ ! $Option == "e" ]; do
	echo "a. Añadir una entrada"
	echo "b. Buscar por DNI"
	echo "c. Ver agenda completa"
	echo "d. Eliminar todas las entradas"
	echo "e. Finalizar"
	read -p "Introduce el numero de la opcion " Option

case $Option in
	"a")
		read -p "Introduce un DNI " dni
		if grep "^$dni:" Agendalist.txt > /dev/null;  then
			echo "Esta persona esta dada de alta previamente"
		else
			read -p "Introduce un nombre " name
			read -p "Introduce los dos apellidos " surname
			read -p "Introduce la localidad " city
			echo $dni:$name:$surname:$city >> Agendalist.txt
			echo "Registro realizado con exito"
			exit
		fi

	;;

	"b")
		read -p "Introduce un dni para buscar " dni
		if ! grep "^$dni:" Agendalist.txt > /dev/null; then
			echo "Error el dni no esta registrado"
		else
			rdni=$(grep $dni Agendalist.txt | cut -d ":" -f 1)
			rname=$(grep $dni Agendalist.txt | cut -d ":" -f 2)
			rapellido=$(grep $dni Agendalist.txt | cut -d ":" -f 3)
			rcity=$(grep $dni Agendalist.txt | cut -d ":" -f4)
			echo "La persona con DNI $dni es : $rname $rapellido, y vive en $rcity"
		fi

	;;

	"c")
		if [ -s Agendalist.txt ]; then
			cat Agendalist.txt
		else
			echo "Agenda Vacia"
		fi
	;;

	"d")
		echo  > Agendalist.txt

	;;

	"e")
		exit
		break

	;;

	*)
		echo "Numero Invalido"
		exit

	;;
esac
done
