## Autor: Miguel Muñoz Correa
## Fecha: 26/03/2025
## Script que puede mostrar tanto informacion del sistema como de los usuarios y directorios
import os
import cpuinfo as cpu
print(os.getuid())
if os.getuid() == 0:
    while True:
        print("Opción 1: Muestra información del SSOO")
        print("Opción 2: Mostrar información del usuario")
        print("Opción 3: Comprueba si es un directorio y sino se crea")
        print("Opción 4: SALIR")
        opcion = int(input("Introduce una opción "))
        match opcion:
            case 1:
                print(os.uname() , cpu.get_cpu_info()['brand_raw'])
            case 2:
                usuario = input("Dime un usuario ")
                fichero = open('/etc/passwd','r')
                contenido = fichero.readlines()
                enc=0
                for i in contenido:
                    if i.split(":")[0] == usuario:
                        print(usuario)
                        enc=1
                        final = i
                        break
                if enc == 1:
                    print(final)
                else:
                    os.system("useradd "+usuario)
                    print("Usuario" +usuario+ "añadido con éxito.")

            case 3:
                directorio = input("Dime un directorio")
                if os.path.isdir(directorio):
                    print("Es un directorio")
                else:
                    os.mkdir(directorio)
                    print('Directorio creado ')
            case 4:
                break
            case _:
                print("Parametro Incorrecto")
else:
    print("No eres root")