# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 2 do Capítulo 3 - Fase 2

# 2 – Olhando para o mercado de educação infantil, você e sua equipe
# decidem criar um aplicativo onde as crianças aprendam a controlar
# os seus gastos.
#
# Como forma de validar um protótipo, foi solicitado que você crie
# um script simples, em que o usuário deve informar QUANTAS TRANSAÇÕES
# financeiras realizou ao longo de um dia e, na sequência, deve informar
# o VALOR DE CADA UMA das transações que realizou.
#
# Seu programa deverá exibir, ao final, o valor total gasto pelo usuário
# também a média do valor de cada transação.

# Caso o usuário insira qualquer informação que não seja um número inteiro o programa deverá parar e informar o erro
while True:
    try:
        op = -1
        # enquanto o usuário não digitar a opção de saída
        while op != 9:
            print("RM88005_EX02")
            print("1 - Excutar o programa")
            print("9 - Sair do programa")
            op = int(input("Digite a opção desejada: "))

            if op == 1:

                # QUANTAS TRANSAÇÕES financeiras realizou ao longo de um dia
                # a linha comentada abaixo gero erro no valor médio das transações, quando informado apenas uma
                # transação o valor médio acaba sendo a metade do valor da transação, isso pq foi somado 1,
                # logo a variavel transação vale 2... por isso foi adicionada a variavel X dentro do loop FOR.
                # transacoes = int(input("Informe quantas transações financeiras foram realizadas hoje: ")) + 1
                transacoes = int(input("Informe quantas transações financeiras foram realizadas hoje: "))
                valorTotal = 0

                # informar o VALOR DE CADA UMA das transações que realizou
                for i in range(transacoes):
                    x = i + 1
                    valor = input("\nInforme o valor da {}ª transação: ".format(x))
                    valor = int(valor)
                    valorTotal = valorTotal + valor

                # exibir, ao final, o valor total gasto pelo usuário
                print("\nO valor total das transações realizadas hoje é R${:.2f}.".format(valorTotal))

                # também a média do valor de cada transação
                media = valorTotal / transacoes
                print("O valor médio das transações é de R${:.2f}\n\n".format(media))

    except ValueError:
        print("\nOops! Não foi informado um valor válido, tente novamente...\n\n")
    break
