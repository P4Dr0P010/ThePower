'''
Ejercicio 5: Suma de Números Pares
Escribe un programa que calcule la suma de todos los números pares del 1 al 100
'''
numero = 0
suma = 0

#VARIANTE 1
while numero <= 100:
    numero += 1
    if numero % 2 == 0:
        suma += numero

#VARIANTE 2
'''
while numero <= 100:
    suma += numero
    numero += 2
'''
print('La suma de los numeros pares del 1 al 100 es: ',suma)
