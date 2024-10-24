'''
Ejercicio 12: Calculadora de Área de un Rectángulo
Crea un programa que calcule el área de un rectángulo. El usuario debe ingresar la longitud y el ancho del rectángulo
'''

ancho = float(input('Intoduce el ancho del rectangulo: '))
alto = float(input('Intoduce el alto del rectangulo: '))

def calc_area(ancho, alto):
    area = ancho * alto
    print(f'El area del rectangulo es {area} ud. cuadradas')

calc_area(ancho, alto)