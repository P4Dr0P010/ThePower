'''
Ejercicio 10: Determinar el Día de la Semana
Escribe un programa que determine el día de la semana correspondiente a un número ingresado por el usuario (1 para lunes, 2 para martes, etc.)
'''
dia_sem = { '1' : 'lunes', '2' : 'martes', '3' : 'miércoles', '4' : 'jueves', '5' : 'viernes', '6' : 'sábado', '7' : 'domingo'}

num_dia = input('Introduce un número del 1 al 7 para determinar el día de la semana: ')
print(f'El día correspondiente al número {num_dia} es: {dia_sem[num_dia]}')