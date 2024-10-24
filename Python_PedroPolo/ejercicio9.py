'''
Ejercicio 9: Conversor de Divisas
Ejercicios Introducción a Python: Enunciados2Crea un programa que convierta una cantidad de dólares a euros. Suponiendo que 1 dólar es igual a 0.85 euros
'''
dolar = 0
def conversor_div(dolar, euro):
    dolar = float(input('Introduce los dolares a convertir ($.$$): '))
    euros = round((dolar * euro), 2)
    print(f'{dolar}$ son {euros}€')

conversor_div(dolar, 0.85)
