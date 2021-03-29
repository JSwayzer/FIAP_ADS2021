# importação de funções específica do módulo calc.py
from calc import somar, subtrair
# outra forma seria importa tudo de um única vez:
# from calc import *


# solicitando valores ao usuário
valor1 = input("Digite um valor: ")
valor2 = input("Digite outro valor: ")
# armazenando a soma
soma = somar(valor1, valor2)
# exibindo a soma
print("A soma é {}".format(soma))

sub = subtrair(valor1, valor2)
print("a subtração é {}".format(sub))
