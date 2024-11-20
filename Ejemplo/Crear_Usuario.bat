@echo off
Rem : Crear Usuario
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024
set /P User_Name="Introduzca Nombre del Usuario: "
set /P Password="Introduzca la Password: "
set /P Group_Name="Introduzca el nombre del grupo: "
net user %User_Name% %Password% /add
net localgroup %Group_Name% /add
net user
net localgroup
pause