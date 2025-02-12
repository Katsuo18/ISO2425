#!/bin/bash
# Miguel Muñoz Correa
# Fecha de Inicio: 11-02-2025
clear

if [ $# -ne 1 ]; then
	num=1000
else
	num=$1
fi
hora=$(date -u +%R)
dia=$(date -u +%D)
#Final de Corrección de Errores
echo "================================================="
echo  "Informe del usuario del dia $dia a las $hora "

IFS=:
while read user x uid gid d h shell; do
	if [ $num -lt $uid ]; then
		echo " $user - $uid "
		total=$(($total+1))
	fi
done < /etc/passwd
echo "Total: $total usuarios"
echo "======================================================"
echo "$dia - $hora - El usuario $USER   ha solicitado un informe de usuario " >> /tmp/logeventos
