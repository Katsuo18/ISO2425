@echo off
Rem : Argumentos Por Lineas de Comando
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024
set Name=Miguel
set A=5
set B=13
set /A Result=%A%+%B%
echo La suma de %A% y %B% es %Result% (Este era un ejemplo)
set /p Number_1="Introduzca el numero "
set /p Number_2="Introduzca un segundo numero "
set /A Suma=Number_1 + Number_2
set /A Resta=Number_1 - Number_2
set /A Multiplicacion=Number_1 * Number_2
set /A Division=Number_1 / Number_2
echo Tus resultados Suma:%Suma%, Resta:%Resta%, Multiplicacion:%Multiplicacion%, Division:%Division%.