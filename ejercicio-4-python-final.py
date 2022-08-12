
#4)Crear un lista en Python denominado “Perro2” que contenga los siguientes valores: 14,  Fido,  12/12/2012 , Macho, 23546987
     
#4)Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
#Lo que hago es crear una lista que contenga los datos del perro
Perro2 = [14, "Fido", "12/12/2012", "Macho", 23546987]
#mediante un for recorro la lista usando la funcion reverse para mostrar los datos de atras hacia adelante
for i in reversed(Perro2):
    print(i)
