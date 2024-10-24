'''
Ejercicio 8: Cálculo del Índice de Masa Corporal (IMC)
Escribe un programa que calcule el Índice de Masa Corporal (IMC) de una persona.
'''
peso = float(input('Indica tu peso en Kg: '))
estatura = float(input('Indica tu estatura en cm: '))

imc = round((peso / (estatura * 2)) * 100, 2)
print(f'Tu IMC segun los datos facilitados es: {imc}%')

#VARIANTE
def calc_imc(peso, estatura):
    imc2 = round((peso / (estatura * 2) * 100), 2)
    print(f'Tu IMC segun la función  es: {imc2}%')

calc_imc(peso, estatura)