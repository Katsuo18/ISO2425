@echo off
Rem : Edades
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024

set /p Edad=" Que edad  tienes? "
if %Edad% LEQ 17 (echo "Eres menor de edad") else (echo "Eres mayor de edad")
pause 
exit