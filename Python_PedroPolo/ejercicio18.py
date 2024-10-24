'''
Ejercicio 18: Contador de Palabras
Crea un programa que cuente la cantidad de palabras en una oración ingresada por el usuario
'''

def cont_pal(text):
    cont = 1
    for char in text:
        if char == " ":
            cont += 1
    print(f'El texto que has introducido contiene {cont} palabras.')

cont_pal(input('Introduce el texto para contar el numero de palabras: '))