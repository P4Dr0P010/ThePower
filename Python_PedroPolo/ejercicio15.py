'''
Ejercicio 15: Conversor de Tiempo
Escribe un programa que convierta un número de minutos en horas y minutos. Por ejemplo, 145 minutos serían 2 horas y 25 minutos
'''

#minutos = int(input('Introduce un numero de minutos: '))

def conv_tiempo(minutos):
    hh = round((minutos / 60), 2)
    mm = round((hh - round(hh, 0)) * 60, 2)
    print(f'{minutos} minutos serían {int(hh)} horas y {int(mm)} minutos.')
   
conv_tiempo(float(input('Introduce un numero de minutos: ')))