# Nome: Johnny Swayzer Assunção
# RM: RM88005
# Atividade 1 do Capítulo 3 - Fase 2

# 1 – O projeto HealthTrack está tomando forma e podemos pensar
# em algoritmos que possam ser reaproveitados quando estivermos
# implementando o front e o back do nosso sistema. Uma das funções
# mais procuradas por usuários de aplicativos de saúde é o de
# controle de calorias ingeridas em um dia. Por essa razão, você
# deve elaborar um algoritmo implementado em Python em que o
# usuário informe quantos alimentos consumiu naquele dia e depois
# possa informar o número de calorias de cada um dos alimentos.
# Como não estudamos listas nesse capítulo você não deve se preocupar
# em armazenar todas as calorias digitadas, mas deve exibir o total
# de calorias no final.
#import os
#import sys

op = -1
# enquanto o usuário não digitar a opção de saída
while op != 9:
    print("RM88005_EX01")
    print("1 - Excutar o programa")
#    print("2 - Limpar tela")
    print("9 - Sair do programa")
    op = int(input("Digite a opção desejada: "))

    if op == 1:
        while True:
            try:
                # quantos alimentos consumiu
                alimentos = int(input("Digite a quantidade de alimentos consumidos hoje: ")) + 1
            except ValueError:
                print("\nOops! Não foi informado um valor válido, tente novamente...\n\n")
                break

        caloriasTotais = 0

        # numero de calorias de cada alimento
        for i in range(1, alimentos):
            calorias = input("\nInforme quantas calorias tem o {}º alimento: ".format(i))
            calorias = int(calorias)
            caloriasTotais = caloriasTotais + calorias

        # exibir o total de calorias no final
        print("\nVocê consumiu {} calorias hoje.\n\n".format(caloriasTotais))

#    if op == 2:
#        os.execv(sys.argv[0],  sys.argv)
#        #os.system('cls||clear')
