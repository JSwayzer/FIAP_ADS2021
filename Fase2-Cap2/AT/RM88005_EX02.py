# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 2 do Capítulo 2 - Fase 2

# 2 – Você foi procurado por um aluno do curso de Produção Multimídia do FIAP ON
# para desenvolver um trabalho em parceria: um serviço em que as pessoas possam
# usar um estúdio profissional para gravar seus vídeos para o YouTube com máxima
# qualidade. O serviço ganha dinheiro por meio de um sistema de assinaturas e de
# um bônus calculado por uma porcentagem sobre o faturamento que o canal do
# cliente obteve ao longo do ano.

# Sua tarefa é criar um algoritmo que receba o tipo de assinatura do cliente, o
# faturamento anual dele e que calcule e exiba qual o valor do bônus que o
# cliente deve pagar a vocês. A tabela abaixo mostra a porcentagem de acordo
# com cada nível de assinatura:

# Nível		Porcentagem sobre o faturamento
# Basic		30%
# Silver		20%
# Gold		10%
# Platinum	5%

# Caso o usuário insira qualquer informação que não seja um número inteiro o programa deverá parar e informar o erro
while True:
    try:
        op = -1
        # enquanto o usuário não digitar a opção de saída
        while op != 9:
            print("RM88005_EX01")
            print("1 - Excutar o programa")
            print("9 - Sair do programa")
            op = int(input("Digite a opção desejada: "))

            if op == 1:
                print("Informe o tipo de assinatura do cliente, conforme a tabela abaixo:")
                print("1 - Basic")
                print("2 - Silver")
                print("3 - Gold")
                print("4 - Platinum")
                assinatura = input("\nDigite o número referente à assinatura do cliente: ")

                if assinatura == "1":
                    fatCliente = float(input("\nInforme o faturamento anual do cliente: "))
                    bonus = fatCliente * 0.3
                    print("O cliente deverá pagar R${:.2f} de bônus.\n".format(bonus))
                elif assinatura == "2":
                    fatCliente = float(input("\nInforme o faturamento anual do cliente: "))
                    bonus = fatCliente * 0.2
                    print("O cliente deverá pagar R${:.2f} de bônus.\n".format(bonus))
                elif assinatura == "3":
                    fatCliente = float(input("\nInforme o faturamento anual do cliente: "))
                    bonus = fatCliente * 0.1
                    print("O cliente deverá pagar R${:.2f} de bônus.\n".format(bonus))
                elif assinatura == "4":
                    fatCliente = float(input("\nInforme o faturamento anual do cliente: "))
                    bonus = fatCliente * 0.05
                    print("O cliente deverá pagar R${:.2f} de bônus.\n".format(bonus))
                else:
                    print("\nNão foi informada a assinatura correta do cliente, tente novamente.\n\n")

    except ValueError:
        print("\nOops! Não foi informado um valor válido, tente novamente...\n\n")
    break
