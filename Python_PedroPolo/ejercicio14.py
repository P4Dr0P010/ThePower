'''
Ejercicio 14: Calculadora de Descuento
Crea un programa que calcule el precio final de un artículo después de aplicar un descuento del 20%
'''

def calc_des(precio):
    dto = float(precio * 0.2)
    precio_final = float(precio - dto)
    print(f'El precio del articulo con un descuento del 20% es: {precio_final:.2f}€')

calc_des(float(input('Introduce precio del articulo: ')))
    