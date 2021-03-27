# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 3 do Capítulo 2 - Fase 2

#3 – Os alunos da sua turma fizeram uma votação para escolher qual dia
#da semana é o melhor para a realização das lives. Desenvolva um programa
#em que o usuário informe a quantidade de votos que cada um dos 5 dias da
#semana (segunda-feira, terça-feira, quarta-feira, quinta-feira e sexta-feira)
#obtiveram, verifique e exiba qual dia foi o escolhido.

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
                seg = int(input("Digite quantos votos foram para segunda-feira: "))
                ter = int(input("Digite quantos votos foram para terça-feira: "))
                qua = int(input("Digite quantos votos foram para quarta-feira: "))
                qui = int(input("Digite quantos votos foram para quinta-feira: "))
                sex = int(input("Digite quantos votos foram para sexta-feira: "))

                if seg > ter:
                    print("\nO dia escolhido foi segunda-feira.")
                elif ter > qua:
                    print("\nO dia escolhido foi terça-feira.")
                elif qua > qui:
                    print("\nO dia escolhido foi quarta-feira.")
                elif qui > sex:
                    print("\nO dia escolhido foi quinta-feira.")
                else:
                    print("\nO dia escolhido foi sexta-feira.")

    except ValueError:
        print("\nOops! Não foi informado um valor válido, tente novamente...\n\n")
    break
