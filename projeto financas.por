
programa
{
funcao inicio()
{
cadeia nomeUsuario, tipoMovimento[100], descricaoMovimento[100], categoriaMovimento[100], categoriaMaiorDespesa 
real valorMovimento[100], valor, totalRendimentos = 0, totalDespesas = 0, saldo = 0, alimentacao = 0, transporte = 0, saude = 0, habitacao = 0, outros = 0, maiorDespesa = 0
inteiro quantidadeMovimentos = 0, opcao = 0, escolhaCategoria, i 

escreva("====================================================\n")
escreva("             GESTOR DE DESPESAS PESSOAIS\n")
escreva("====================================================\n")
escreva("MOKOTA, ESCREVE O TEU NOME? ")
leia(nomeUsuario)
escreva("\nYa, ",nomeUsuario,"! VIDA N ESTA FACIL, VAMOS LA ORGANIZAR AS FINANCAS!\n")

enquanto(opcao != 5)
{
escreva("\n====================================================\n")
escreva("                 MENU PRINCIPAL\n")
escreva("====================================================\n")
escreva("[1] Registar rendimento\n")
escreva("[2] Registar despesa\n")
escreva("[3] Listar movimentos\n")
escreva("[4] Ver resumo financeiro\n")
escreva("[5] Sair\n")
escreva("Escolhe uma opcao: ")
leia(opcao)

se(opcao == 1 ou opcao == 2)
{
se(quantidadeMovimentos < 100)
{
se(opcao == 1)
{
tipoMovimento[quantidadeMovimentos] = "Rendimento"
}
senao
{
tipoMovimento[quantidadeMovimentos] = "Despesa"
}

escreva("Descricao do movimento: ")
leia(descricaoMovimento[quantidadeMovimentos])

escreva("\n[1] Alimentacao\n")
escreva("[2] Transporte\n")
escreva("[3] Saude\n")
escreva("[4] Habitacao\n")
escreva("[5] Outros\n")
escreva("Escolhe a categoria: ")
leia(escolhaCategoria)

enquanto(escolhaCategoria < 1 ou escolhaCategoria > 5)
{
escreva("Categoria invalida! Tenta novamente: ")
leia(escolhaCategoria)
}

escolha(escolhaCategoria)
{
caso 1:
categoriaMovimento[quantidadeMovimentos] = "Alimentacao"
pare
caso 2:
categoriaMovimento[quantidadeMovimentos] = "Transporte"
pare
caso 3:
categoriaMovimento[quantidadeMovimentos] = "Saude"
pare
caso 4:
categoriaMovimento[quantidadeMovimentos] = "Habitacao"
pare
caso 5:
categoriaMovimento[quantidadeMovimentos] = "Outros"
pare
}

escreva("Digita o valor: ")
leia(valor)

enquanto(valor <= 0)
{
escreva("O valor deve ser maior que zero, Kota!\n")
escreva("Tenta novamente: ")
leia(valor)
}

valorMovimento[quantidadeMovimentos] = valor
quantidadeMovimentos = quantidadeMovimentos + 1

escreva("Movimento registado com sucesso!\n")
}
senao
{
escreva("Ja atingiste o limite de 100 movimentos!\n")
}
}
senao
{
se(opcao == 3)
{
escreva("\n========== MOVIMENTOS REGISTADOS ==========\n")

se(quantidadeMovimentos == 0)
{
escreva("Ainda nao existem movimentos registados.\n")
}
senao
{
para(i = 0; i < quantidadeMovimentos; i++)
{
escreva("\nMovimento: ",i + 1,"\n")
escreva("Tipo: ",tipoMovimento[i],"\n")
escreva("Descricao: ",descricaoMovimento[i],"\n")
escreva("Categoria: ",categoriaMovimento[i],"\n")
escreva("Valor: ",valorMovimento[i]," Kz\n")
escreva("--------------------------------------\n")
}
}
}
senao
{
se(opcao == 4)
{
totalRendimentos = 0
totalDespesas = 0
alimentacao = 0
transporte = 0
saude = 0
habitacao = 0
outros = 0
maiorDespesa = 0

para(i = 0; i < quantidadeMovimentos; i++)
{
se(tipoMovimento[i] == "Rendimento")
{
totalRendimentos = totalRendimentos + valorMovimento[i]
}
senao
{
totalDespesas = totalDespesas + valorMovimento[i]

se(categoriaMovimento[i] == "Alimentacao")
{
alimentacao = alimentacao + valorMovimento[i]
}
senao
{
se(categoriaMovimento[i] == "Transporte")
{
transporte = transporte + valorMovimento[i]
}
senao
{
se(categoriaMovimento[i] == "Saude")
{
saude = saude + valorMovimento[i]
}
senao
{
se(categoriaMovimento[i] == "Habitacao")
{
habitacao = habitacao + valorMovimento[i]
}
senao
{
outros = outros + valorMovimento[i]
}
}
}
}
}
}

saldo = totalRendimentos - totalDespesas

escreva("\n========== RESUMO FINANCEIRO ==========\n")
escreva("Rendimentos: ",totalRendimentos," Kz\n")
escreva("Despesas: ",totalDespesas," Kz\n")
escreva("Saldo: ",saldo," Kz\n")

escreva("\n========== DESPESAS POR CATEGORIA ==========\n")
escreva("Alimentacao: ",alimentacao," Kz\n")
escreva("Transporte: ",transporte," Kz\n")
escreva("Saude: ",saude," Kz\n")
escreva("Habitacao: ",habitacao," Kz\n")
escreva("Outros: ",outros," Kz\n")

se(totalDespesas > 0)
{
maiorDespesa = alimentacao
categoriaMaiorDespesa = "Alimentacao"

se(transporte > maiorDespesa)
{
maiorDespesa = transporte
categoriaMaiorDespesa = "Transporte"
}

se(saude > maiorDespesa)
{
maiorDespesa = saude
categoriaMaiorDespesa = "Saude"
}

se(habitacao > maiorDespesa)
{
maiorDespesa = habitacao
categoriaMaiorDespesa = "Habitacao"
}

se(outros > maiorDespesa)
{
maiorDespesa = outros
categoriaMaiorDespesa = "Outros"
}

escreva("\nMaior despesa: ",categoriaMaiorDespesa,"\n")
escreva("Valor: ",maiorDespesa," Kz\n")
}
senao
{
escreva("Ainda nao existem despesas, Kota!\n")
}
}
senao
{
se(opcao == 5)
{
escreva("\nObrigado, ",nomeUsuario,"! Ate a proxima, Kota!\n")
}
senao
{
escreva("\nOpcao invalida! Escolhe entre 1 e 5.\n")
}
}
}
}
}
}
}
