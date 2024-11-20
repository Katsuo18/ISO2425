@echo off
Rem :
Rem Autor: Miguel Muñoz Correa 
Rem Fecha: 18/11/2024

set /p a="Introduzca el numero 1: "
set /p b="Introduzca el numero 2: "

if %a% EQU %b% echo IGUAL

if %a% NEQ %b% echo Hola

if %a% GTR %b% echo %a% es mayor que %b%

if %a% LSS %b% echo %a% es menor que %b%

if %a% LEQ %b% echo %a% es menor o igual que %b%

if %a% GEQ %b% echo %a% es mayor o igual que %b%
pause

set /p c="Introduzca el numero 3: "
set /p d="Introduzca el numero 4: "

if %c% GEQ %d% goto casol

:casol
echo %c% es mayor que %d%
mkdir %c%

goto final
:final
echo Muchas gracias por usar mi codigo 
pause 
exit