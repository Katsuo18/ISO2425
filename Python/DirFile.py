## Autor: Miguel Muñoz Correa
## Fecha: 26/03/2025
## Script que con dos listas pueda mostar , eliminar o copiar carpetas o ficheros

import os
import shutil
ListaCarpeta  = []
ListaFichero = []
fichero = open('/home/alumno/Escritorio/Rutas.txt','r')
lectura = fichero.readlines()
for i in lectura:
    r=i.strip()
    if os.path.isfile(r):
        ListaFichero.append(r)
    elif os.path.isdir(r):
        ListaCarpeta.append(r)
while True:
    print("A- Pedir nombre de fichero y eliminarlo.")
    print("B- Pedir nombre de directorio y mostar su información.")
    print("C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("D- Mostrar lista elegida por el usuario")
    print("E- SALIR")
    opcion = (input("Introduce una opción "))
    match opcion:
        case "A":
            fich = input("Introduce el nombre del fichero")
            fichlist=ListaFichero[fich]
            os.system("rm -f " +fichlist)
        case "B":
            dirc = input("Introduce el nombre de un directorio")
            dirclist=ListaCarpeta[dirc]
            os.system("ls " +dirclist)
        case "C":
            fich = input("Introduce el nombre del fichero")
            fichlist = ListaFichero[fich]
            copia = input("Introduce un destino para copiarlo")
            shutil.copy(fichlist,copia)
        case "D":
            print("Que lista quieres mostrar ListaCarpeta=A o ListaFichero=B")
            eleccion = input("Selecciona la lista")
            if eleccion == "A":
                print(ListaCarpeta)
            elif eleccion == "B":
                print(ListaFichero)
        case "E":
            break
        case _:
            print("Parametro Incorrecto")