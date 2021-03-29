notas = []

op = -1
while op != 4:
    print("1 - Informar notas \n2 - Exibir notas \n3 - Calcular média \n4 - Sair")
    op = int(input("Escolha sua opção: "))
    if op == 1:
        notas.append(float(input("Digite a nota!")))
    elif op == 2:
        for x in notas:
            print(x)
    elif op == 3:
        print(sum(notas)/len(notas))