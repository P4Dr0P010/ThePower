'''
Ejercicio 11: Calculadora de Edad
Escribe un programa que solicite al usuario su año de nacimiento y calcule su edad actual
'''
año_act = 2024
año_nac = int(input('Introduce tu año de nacimiento (YYYY): '))

def calc_edad(año_nac):
    edad = año_act - año_nac
    print(f'Tu edad es: {edad}')

calc_edad(año_nac)