'''
Ejercicio 20: Suma de Números en una Lista
Crea un programa que sume todos los números en una lista ingresada por el usuario
'''

def sum(list):
    suma = 0
    for num in list.split(','):
        suma += int(num)
        
    print(f'La suma total de los numeros introducidos es: {suma}')

sum(input('Introduce una lista de números separados por comas: '))
