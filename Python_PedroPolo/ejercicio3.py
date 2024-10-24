'''
Ejercicio 3: Verificación de Edad
Escribe un programa que solicite la edad de un usuario y determine si es mayor de edad (mayor o igual a 18 años) o no
'''
def mayor_de_edad(edad):
    if edad >= 18:
        print('Eres mayor de edad')
    else:
        print('No eres mayor de edad, compra chuches')

#user_edad = int(input('Introduce tu edad:'))

user_edad = 18
mayor_de_edad(user_edad)
