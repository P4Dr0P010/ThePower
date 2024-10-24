'''
Ejercicio 19: Verificación de Año Bisiesto
Escribe un programa que determine si un año ingresado por el usuario es bisiesto o no

Un año es bisiesto si es divisible por 4 y no por 100, o si es divisible por 400, es bisiesto.
'''

def anio_bis(anio):
    if anio % 4 == 0 and anio % 100 != 0 or anio % 400 == 0:
        print(f'el {anio} es bisiesto')
    else:
        print(f'el {anio} NO es bisiesto')

anio_bis(int(input('Introduce el año que deseas consultar si es bisiesto: ')))