@echo off
Rem : Directories
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024
echo Pulsa 1 para crear un Fichero
echo Pulsa 2 para mostrar el Arbol de directorios de la carpeta usuario
echo Pulsa 3 para mostrar archivos con extension .txt
echo Pulsa 4 para crear directorios alfredoff, marinapg,ramonam
echo Pulsa 5 para copiar el contenido de tu carpeta usuario al Escritorio
set /p Crear=
if %Crear% == 1 goto Fichero
if %Crear% == 2 goto Arbol
if %Crear% == 3 goto Mostrar
if %Crear% == 4 goto Crear
if %Crear% == 5 goto Copiar
if %Crear% LEQ 6 echo Error con el numero pulsado 
pause 
exit
:Fichero
set /p a="Introduzca nombre del fichero: "
echo > %a%.txt
pause 
exit
:Arbol
tree C:\Users\alumno
pause 
exit
:Mostrar
dir *.txt
pause
exit
:Crear
mkdir alfredoff
mkdir marinapg
mkdir ramonam
pause 
exit 
:Copiar
xcopy /e C:\Users\alumno C:\Copia
pause 
exit