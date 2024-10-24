'''
Ejercicio 4: Contador de Vocales
Crea un programa que cuente el número de vocales en una palabra ingresada por el usuario
'''
vocales = "aeiouAEIOU"
contador = 0
palabra = input("Ingresa una o varias palabras para contar las vocales:")
for letra in palabra:
    if letra in vocales:
        contador += 1
print(f'La palabra {palabra} contiene: {contador} vocales')