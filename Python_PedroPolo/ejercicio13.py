'''
Ejercicio 13: Verificación de Número Primo
Escribe un programa que determine si un número ingresado por el usuario es primo o no
'''

def ver_primo(numero):
    contador = 0
    if numero < 2:
        print(f'El numero {numero} NO es primo')
    else:
        for num in range (1, numero + 1):
            if numero % num == 0:
                contador += 1
        if contador == 2 :
            print(f'El numero {numero} es primo')
        else:
            print(f'El numero {numero} NO es primo')
        
ver_primo(int(input('Introduce un numero para comprobar si es primo: ')))