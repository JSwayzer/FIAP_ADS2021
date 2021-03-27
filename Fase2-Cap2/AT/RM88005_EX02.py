# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 2 do Capítulo 2 - Fase 2

#2 – Você foi procurado por um aluno do curso de Produção Multimídia do FIAP ON
#para desenvolver um trabalho em parceria: um serviço em que as pessoas possam
#usar um estúdio profissional para gravar seus vídeos para o YouTube com máxima
#qualidade. O serviço ganha dinheiro por meio de um sistema de assinaturas e de
#um bônus calculado por uma porcentagem sobre o faturamento que o canal do
#cliente obteve ao longo do ano.

#Sua tarefa é criar um algoritmo que receba o tipo de assinatura do cliente, o
#faturamento anual dele e que calcule e exiba qual o valor do bônus que o
#cliente deve pagar a vocês. A tabela abaixo mostra a porcentagem de acordo
#com cada nível de assinatura:

#Nível		Porcentagem sobre o faturamento
#Basic		30%
#Silver		20%
#Gold		10%
#Platinum	5%

print("Informe o tipo de assinatura do cliente, conforme a tabela abaixo:")
print("1 - Basic")
print("2 - Silver")
print("3 - Gold")
print("4 - Platinum")
assinatura = input("\nDigite o número referente à assinatura do cliente: ")

fatCliente = input("\nInforme o faturamento anual do cliente: ")
fatCliente = float(fatCliente)

if assinatura == "1":
    bonus = fatCliente * 0.3
    print("\nO cliente deverá pagar R${:.2f} de bônus.".format(bonus))
elif assinatura == "2":
    bonus = fatCliente * 0.2
    print("\nO cliente deverá pagar R${:.2f} de bônus.".format(bonus))
elif assinatura == "3":
    bonus = fatCliente * 0.1
    print("\nO cliente deverá pagar R${:.2f} de bônus.".format(bonus))
elif assinatura == "4":
    bonus = fatCliente * 0.05
    print("\nO cliente deverá pagar R${:.2f} de bônus.".format(bonus))