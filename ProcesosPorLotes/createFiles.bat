@echo off
Rem : Crear Archivos o Carpetas
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024
echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat
set /p Crear=
if %Crear% == 1 goto .txt
if %Crear% == 2 goto .bat
:.txt
set /p Archivo_Texto="Introduzca el nombre del archivo"
echo > %Archivo_Texto%.txt
echo Archivo %Archivo_Texto% se ha creado correctamente
exit
:.bat
set /p Archivo_Proceso="Introduzca el nombre del archivo"
echo > %Archivo_Proceso%.bat
echo Archivo %Archivo_Proceso% se ha creado correctamente
exit
