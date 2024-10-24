'''
Ejercicio 7: Calculadora Simple
Crea un programa que realice operaciones aritméticas simples (suma, resta, multiplicación, división) según la elección del usuaria
'''
a = float(input('numero A):'))
b = float(input('numero B):'))
total = 0
operación = input('¿Que operación quieres realizar (+, -, * o /)?')
if operación == '*':
    total = float(a * b)
    print(f'El resultado de la operación producto es {total}')
elif operación == '-':
    total = float(a - b)
    print(f'El resultado de la operación resta es {total}')
elif operación == '/':
    total = float(a / b)
    print(f'El resultado de la operación división es {total}')
elif operación == '+':
    total = float(a / b) 
    print(f'El resultado de la operación suma es {total}')