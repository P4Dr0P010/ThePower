'''
Ejercicio 17: Conversor de Millas a Kilómetros
Escribe un programa que convierta una distancia en millas a kilómetros. Sabiendo que 1 milla equivale a 1.60934 kilómetros
'''
def conv_mill(millas):
    km = round((millas * 1.60934), 2)
    print(f'{millas} Ml son {km} Km.')

conv_mill(float(input('Introduce las millas que quieres convertir a Km: ')))
