algoritmo "Operacoes_e_Logistica"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Hudson Neves e Silva
// Descrição   : Transfers, escalonamento, itinerários.

var
   trfs: vetor [1..10] de caractere
   itO: vetor [1..10] de caractere
   itD: vetor [1..10] de caractere
   itH: vetor [1..10] de caractere
   itV: vetor [1..10] de caractere
   escD: vetor [1..10] de caractere
   escV: vetor [1..10] de caractere
   escR: vetor [1..10] de caractere
   op, sOp, i, contT, contE, contI: inteiro
   tmpD, tmpV, tmpR, tmpO, tmpH: caractere
inicio
   contT <- 0
   contE <- 0
   contI <- 0

   // Menu principal
   repita
      limpatela
      escreval("=== SISTEMA DE OPERAÇÕES E LOGÍSTICA ===")
      escreval("1 - Gerenciar Transferências")
      escreval("2 - Gerenciar Escalonamentos")
      escreval("3 - Gerenciar Itinerários")
      escreval("4 - Relatórios")
      escreval("0 - Sair")
      escreva("Escolha uma opção: ")
      leia(op)

      escolha op
         // Menu Transferência
      caso 1
         repita
            limpatela
            escreval("=== GERENCIAMENTO DE TRANSFERÊNCIAS ===")
            escreval("1 - Cadastrar Transferência")
            escreval("2 - Listar Transferência")
            escreval("3 - Voltar")
            escreva("Escolha uma opção: ")
            leia(sOp)

            escolha (sOp)
               // Cadastrar transferência
            caso 1
               se contT < 10 entao
                  contT <- contT + 1
                  escreva("Informe os detalhes da Transferência ",contT, ": ")
                  leia(trfs[contT])
                  escreval("Transferência cadastrada com sucesso!")
               senao
                  escreval("Limite de transferência atingido!")
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 2
               // Listar Transferência
               limpatela
               escreval("=== LISTA DE TRANSFERÊNCIA ===")
               se (contT = 0) entao
                  escreval("Nenhuma transferência cadastrada.")
               senao
                  para i de 1 ate contT faca
                     escreval(i, ". ", trfs[i])
                  fimpara
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 3
               // Voltar menu principal
               escreval("Retornando ao menu principal...")

            outrocaso
               escreval("Opção inválida!")
            fimescolha
         ate (sOp = 3)

      caso 2
         // Menu de escalonamentos
         repita
            limpatela
            escreval("=== GERENCIAMENTO DE ESCALONAMENTOS ===")
            escreval("1. Cadastrar Escalonamento")
            escreval("2. Listar Escalonamentos")
            escreval("3. Voltar")
            escreva("Escolha uma opção: ")
            leia(sOp)

            escolha (sOp)
            caso 1
               // Cadastrar Escalonamentos
               se (contE < 10) entao
                  contE <- contE + 1
                  escreval("Cadastrando escalonamento ", contE)
                  escreva("Data: ")
                  leia(tmpD)
                  escD[contE] <- tmpD
                  escreva("Veículo: ")
                  leia(tmpV)
                  escV[contE] <- tmpV
                  escreva("Rota: ")
                  leia(tmpR)
                  escR[contE] <- tmpR
                  escreval("Escalonamento cadastrado com sucesso!")
               senao
                  escreval("Limite de escalonamentos atingido!")
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 2
               // Listar Escalonamentos
               limpatela
               escreval("=== LISTA DE ESCALONAMENTOS ===")
               se (contE = 0) entao
                  escreval("Nenhum escalonamento cadastrado.")
               senao
                  para i de 1 ate contE faca
                     escreval(i, ". Data: ", escD[i], " | Veículo: ", escV[i], " | Rota: ", escR[i])
                  fimpara
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 3
               // Voltar
               escreval("Retornando ao menu principal...")
            outrocaso
               escreval("Opção inválida!")
            fimescolha
         ate (sOp = 3)

      caso 3
         // Menu de Itinerários
         repita
            limpatela
            escreval("=== GERENCIAMENTO DE ITINERÁRIOS ===")
            escreval("1. Cadastrar Itinerário")
            escreval("2. Listar Itinerários")
            escreval("3. Voltar")
            escreva("Escolha uma opção: ")
            leia(sOp)

            escolha sOp
            caso 1
               // Cadastrar Itinerários
               se (contI < 10) entao
                  contI <- contI + 1
                  escreval("Cadastrando itinerário ", contI)
                  escreva("Origem: ")
                  leia(tmpO)
                  itO[contI] <- tmpO
                  escreva("Destino: ")
                  leia(tmpD)
                  itD[contI] <- tmpD
                  escreva("Horário: ")
                  leia(tmpH)
                  itH[contI] <- tmpH
                  escreva("Veículo: ")
                  leia(tmpV)
                  itV[contI] <- tmpV
                  escreval("Itinerário cadastrado com sucesso!")
               senao
                  escreval("Limite de itinerários atingido!")
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 2
               // Listar Itinerários
               limpatela
               escreval("=== LISTA DE ITINERÁRIOS ===")
               se (contI = 0) entao
                  escreval("Nenhum itinerário cadastrado.")
               senao
                  para i de 1 ate contI faca
                     escreval(i, ". Origem: ", itO[i], " | Destino: ", itD[i])
                     escreval("   Horário: ", itH[i], " | Veículo: ", itV[i])
                     escreval("-----------------------------------")
                  fimpara
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 3
               // Voltar
               escreval("Retornando ao menu principal...")
            outrocaso
               escreval("Opção inválida!")
            fimescolha
         ate (sOp = 3)

         // Gerador de relatórios
      caso 4
         repita
            limpatela
            escreval("=== RELATÓRIOS ===")
            escreval("1 - Relatório de Transferências")
            escreval("2 - Relatório de Escalonamentos")
            escreval("3 - Relatório de Itinerários")
            escreval("4 - Todos os Relatórios")
            escreval("5 - Voltar")
            escreva("Escolha uma opção: ")
            leia(sOp)

            escolha (sOp)
            caso 1
               //Relatórios de transferências sistêmica
               limpatela
               escreval("=== RELATÓRIO DE TRANSFERÊNCIAS ===")
               se (contT = 0) entao
                  escreval("Nenhuma transferência cadastrada.")
               senao
                  para i de 1 ate contT faca
                     escreval(i, ". ", trfs[i])
                  fimpara
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 2
               //Relatório de escalonamentos sistêmico
               limpatela
               escreval("=== RELATÓRIO DE ESCALONAMENTOS ===")
               se (contE = 0) entao
                  escreval("Nenhum escalonamento cadastrado.")
               senao
                  para i de 1 ate contE faca
                     escreval(i, ". Data: ", escD[i], " | Veículo: ", escV[i], " | Rota: ", escR[i])
                  fimpara
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 3
               //Relatório de itinerários sistêmico
               limpatela
               escreval("==== RELATÓRIO DE ITINERÁRIOS ====")
               se (contI = 0) entao
                  escreval("Nenhum itinerário cadastrado.")
               senao
                  para i de 1 ate contI faca
                     escreval(i, ". Origem: ", itO[i], " | Destino: ", itD[i])
                     escreval("   Horário: ", itH[i], " | Veículo: ", itV[i])
                     escreval("-----------------------------------")
                  fimpara
               fimse
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)

            caso 4
               //todos os relatórios (lista de cadastrados efetuado)
               limpatela
               escreval("=== RELATÓRIO DE TRANSFERÊNCIAS ===")
               para i de 1 ate contT faca
                  escreval(i, ". ", trfs[i])
               fimpara
               escreval("=== RELATÓRIO DE ESCALONAMENTOS ===")
               para i de 1 ate contE faca
                  escreval(i, ". Data: ", escD[i], " | Veículo: ", escV[i], " | Rota: ", escR[i])
               fimpara
               escreval("=== RELATÓRIO DE ITINERÁRIOS ===")
               para i de 1 ate contI faca
                  escreval(i, ". Origem: ", itO[i], " | Destino: ", itD[i])
                  escreval("   Horário: ", itH[i], " | Veículo: ", itV[i])
                  escreval("-----------------------------------")
               fimpara
               escreval("Pressione qualquer tecla para continuar...")
               leia(sOp)
            caso 5
               escreval("Retornando ao menu principal...")
            outrocaso
               escreval("Opção inválida!")
            fimescolha
         ate (sOp = 5)

      caso 0
         escreval("Saindo do sistema...")

      outrocaso
         escreval("Opção inválida!")
      fimescolha
   ate (op = 0)

fimalgoritmo
