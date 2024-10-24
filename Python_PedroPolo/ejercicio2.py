'''
Ejercicio 2: Calculadora de Propina
Crea un programa que calcule el monto total a pagar en un restaurante, incluyendo una propina del 15% sobre el total de la cuenta
'''
venta = 33.19
propina = round(venta * 0.15, 2)
total = venta + propina
print(f'El total a pagar es {total}€, incluyendo una propina del 15% por valor de {propina}€')

