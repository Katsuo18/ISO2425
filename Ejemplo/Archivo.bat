@echo off
Rem : Crear un archivo .txt
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024
echo > %1.txt
echo %USERNAME% >> %1.txt
echo %DATE% >> %1.txt
set /p Apellidos="Introduzca sus Apellidos: "
echo %Apellidos% >> %1.txt
type %1.txt
pause