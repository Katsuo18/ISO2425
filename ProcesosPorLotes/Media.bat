@echo off
Rem : Media
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024
set Number_1=%1
set Number_2=%2
set Number_3=%3
set /A Media=(%Number_1%+%Number_2%+%Number_3%)/3
echo Tu resultado de la media es %Media%