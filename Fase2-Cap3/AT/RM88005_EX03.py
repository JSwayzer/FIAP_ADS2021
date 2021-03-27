# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 3 do Capítulo 3 - Fase 2


# 3 – Uma grande empresa de jogos está querendo tornar seus games
# mais desafiadores. Por isso ela contratou você para desenvolver
# um algoritmo que será aplicado futuramente em diversos outros
# games: o algoritmo da sorte de Fibonnaci.
#
# A ideia dessa empresa, é claro, é fazer com que seja mais difícil
# os jogadores terem sucesso nas ações que realizam nos games.
# Por isso o seu algoritmo deverá funcionar da seguinte forma:
# o usuário deve digitar um valor numérico inteiro e o algoritmo
# deverá verificar se esse valor encontra-se na sequência de Fibonnaci.
# Caso o número esteja na sequência, o algoritmo deve exibir a mensagem
# “Ação bem sucedida!” e, caso não esteja, deve exibir a mensagem
# “A ação falhou...”.
#
# A sequência de Fibonacci é muito simples e possui uma lógica de
# fácil compreensão: ela se inicia em 1 e cada novo elemento da
# sequência é a soma entre os dois elementos anteriores.
# Portanto: 1, 1, 2, 3, 5, 8, 13, 21, e assim por diante.
#
# Logo, se o usuário digitar o número 55 o programa deverá informar
# que a ação foi bem sucedida, afinal 55 está entre os números da sequência.
#
# Mas se o usuário digitar o número 6, por exemplo, a ação não será
# bem sucedida, pois o número 6 não está na sequência.

# Caso o usuário insira qualquer informação que não seja um número inteiro o programa deverá parar e informar o erro
while True:
    try:
        op = -1
        # enquanto o usuário não digitar a opção de saída
        while op != 9:
            print("RM88005_EX03")
            print("1 - Executar o programa")
            print("9 - Sair do programa")
            op = int(input("Digite a opção desejada: "))

            if op == 1:

                # o usuário deve digitar um valor numérico inteiro
                num = int(input("Digite um número inteiro: "))

                # o algoritmo deverá verificar se esse valor encontra-se na sequência de Fibonnaci
                # variáveis que receberam os valores anteriores
                fibonacci, f1, f2 = 0, 0, 1

                while fibonacci < num:
                    # print("fibonacci:", f1, "+", f2, "=", fibonacci)
                    # print("fibonacci:", f1, "+", f2)
                    fibonacci = f1 + f2
                    # print("resultado:", fibonacci)
                    f1 = f2
                    f2 = fibonacci

                # Caso o número esteja na sequência, o algoritmo deve exibir a mensagem “Ação bem sucedida!”
                if num == fibonacci:
                    print("\nAção bem sucedida!\n\n")
                # Caso não esteja, deve exibir a mensagem “A ação falhou...”
                else:
                    # print("YOU DIED...")
                    print("\nA ação falhou...\n\n")

    except ValueError:
        print("\nOops! Não foi informado um valor válido, tente novamente...\n\n")
    break
