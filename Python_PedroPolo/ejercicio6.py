'''
Ejercicio 6: Verificación de Palíndromo
Crea un programa que verifique si una palabra ingresada por el usuario es un palíndromo (se lee igual de izquierda a derecha que de derecha a izquierda).
'''
palabra = input('Ingresa un palindromo (se lee igual de izquierda a derecha y viceversa):')
arbalap = palabra[::-1]
if palabra == arbalap:
    print(f'La palabra {palabra} es un palindromo')
else:
    print(f'La palabra {palabra} NO es un palindromo, sigue buscando')

#VARIANTE
'''
def es_palindromo(palabra):
    palabra = palabra.lower()
    return palabra == palabra[::-1]

if es_palindromo == True:
    print(f'La palabra {palabra} es un palindromo')
else:
    print(f'La palabra {palabra} NO es un palindromo, sigue buscando')
'''