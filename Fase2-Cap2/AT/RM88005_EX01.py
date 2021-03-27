# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 1 do Capítulo 2 - Fase 2

#1 – O projeto HealthTrack é o máximo e tem grande possibilidade
#de impactar positivamente a vida das pessoas.
#
#Mesmo que a solução final não utilize uma implementação em Python,
#podemos aproveitar a oportunidade para desenvolver o algoritmo que
#resolva um problema simples: o cálculo do IMC sem distinção de sexo biológico.
#
#Por isso, você deve desenvolver um script que solicite o PESO e a ALTURA
#de uma pessoa. A partir disso, o script deva calcular o
#IMC (PESO dividido pelo quadrado da ALTURA) e informar em quais das faixas
#a pessoa se encontra, de acordo com a divisão a seguir:
#
#IMC	Categoria
#abaixo de 16,00	Baixo peso Grau III
#16,00 a 16,99	Baixo peso Grau II
#17,00 a 18.49	Baixo peso Grau I
#18,50 a 24,99	Peso ideal
#25,00 a 29,99	Sobrepeso
#30,00 a 34,99	Obesidade Grau I
#35,00 a 39,99	Obesidade Grau II
#40,0 e acima	Obesidade Grau III


altura = input("Digite sua altura (em M): ")
altura = float(altura)
peso = input("Digite seu peso (em Kg): ")
peso = float(peso)

#Calcular o IMC segundo a formula (PESO dividido pelo quadrado da ALTURA)
imc = peso/(altura*altura)

if imc < 16.00:
    print("Baixo peso Grau III")
elif imc <= 16.99:
    print("Baixo peso Grau II")
elif imc <= 18.49:
    print("Baixo peso Grau I")
elif imc <= 24.99:
    print("Peso ideal")
elif imc <= 29.99:
    print("Sobrepeso")
elif imc <= 34.99:
    print("Obesidade Grau I")
elif imc <= 39.99:
    print("Obesidade Grau II")
elif imc >= 40.00:
    print("Obesidade Grau III")