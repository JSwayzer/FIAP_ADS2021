# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 3 do Capítulo 2 - Fase 2

#3 – Os alunos da sua turma fizeram uma votação para escolher qual dia
#da semana é o melhor para a realização das lives. Desenvolva um programa
#em que o usuário informe a quantidade de votos que cada um dos 5 dias da
#semana (segunda-feira, terça-feira, quarta-feira, quinta-feira e sexta-feira)
#obtiveram, verifique e exiba qual dia foi o escolhido.


seg = int(input("Digite quantos votos foram para segunda-feira: "))
ter = int(input("Digite quantos votos foram para terça-feira: "))
qua = int(input("Digite quantos votos foram para quarta-feira: "))
qui = int(input("Digite quantos votos foram para quinta-feira: "))
sex = int(input("Digite quantos votos foram para sexta-feira: "))

if seg > ter:
    print("O dia escolhido foi segunda-feira.")
elif ter > qua:
    print("O dia escolhido foi terça-feira.")
elif qua > qui:
    print("O dia escolhido foi quarta-feira.")
elif qui > sex:
    print("O dia escolhido foi quinta-feira.")
else:
    print("O dia escolhido foi sexta-feira.")