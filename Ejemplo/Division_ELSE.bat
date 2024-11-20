@echo off
Rem :Divisor 0
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024

set /p a="Introduzca el primer numero: "
set /p b="Introduzca el segundo numero: "
set /a Result= %a%/%b%
if %b% EQU 0 (echo "Error no se puede dividir entre 0") else (echo "El resultado es %Result%")
pause 
exit