"""Crear una lista en Python denominada “Dueno2” y recorrerla con un bucle mostrando sus elementos por pantalla con excepción del DNI y el apellido.

Los elementos de la lista son:

       23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)"""

Dueno2=[23546987,  "Maria",  "Perez", 4789689,  "Pueyrredon  811"]
datos=["DNI: ", "Nombre: ", "Apellido: ", "Teléfono :", "Dirección: "]
for i in range(len(Dueno2)):
    if (i!=0 and i!=2):
        print (datos[i]+str(Dueno2[i]))
