@echo off
Rem : Crear Directorio
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 19/11/2024

set /P Directorio="Intoduzca el nombre del Directorio: "
mkdir %Directorio%
set /P Fichero="Introduzca el nombre del Fichero: "
echo > %Directorio%/%Fichero%.txt
set /P Num_1="Dime el primer numero: "
set /P Num_2="Dime el segundo numero: "
set /A Result=%Num_1% * %Num_2%
echo %Result% >> %Directorio%/%Fichero%.txt
tree %Directorio% >> %Directorio%/%Fichero%.txt
type %Directorio%/%Fichero%.txt
