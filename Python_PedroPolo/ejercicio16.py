'''
Ejercicio 16: Contador de Números Pares e Impares
Crea un programa que cuente y muestre la cantidad de números pares e impares en una lista ingresada por el usuari
'''

list = input('Introduce una lista de números separados por comas: ')

def par_impar(list):
    cont_p = 0
    cont_i = 0
    for num in list.split(','):
        if int(num) % 2 == 0:
            cont_p += 1
        else:
            cont_i +=1
    print(f'En la lista hay {cont_i} numeros impares y {cont_p} numeros pares')

par_impar(list)
