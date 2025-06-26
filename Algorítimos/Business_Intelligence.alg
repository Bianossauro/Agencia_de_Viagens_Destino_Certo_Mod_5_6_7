algoritmo "Business_Intelligence"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Hudson Neves e Silva
// Descrição   : Sistema de controle Business Intelligence (BI)

var
   // Controle de menu
   opcao, subRelatorio: inteiro

   // Dados de vendas
   produto: vetor [1..10] de caractere
   quantidade: vetor [1..10] de inteiro
   valorUnitario: vetor [1..10] de real
   totalVendas: inteiro

   // Dados dos pacotes
   pacote: vetor [1..10] de caractere
   valorPacote: vetor [1..10] de real
   dataPacote: vetor [1..10] de caractere
   formaPagamento: vetor [1..10] de caractere
   totalPacotes: inteiro
   contadorDePacotes: inteiro
   contadorDeVenda: inteiro

inicio
   // Inicializar contadores
   totalVendas <- 0
   totalPacotes <- 0
   //contadorDePacotes <- 1
   //contadorDeVenda <- 1

   // Menu Principal
   repita
      escreval("========= MENU PRINCIPAL =========")
      escreval("1 - Análise de Vendas")
      escreval("2 - Pacotes Vendidos")
      escreval("3 - Cadastrar Venda")
      escreval("4 - Cadastrar Pacote Promocional")
      escreval("5 - Relatórios")
      escreval("6 - Sair")
      escreval("==================================")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha opcao

         // Análise de Vendas
      caso 1
         escreval("Executando Análise de Vendas...")
         escreval("Análise concluída!")
         escreval("----------------------------------")

         // Pacotes Vendidos
      caso 2
         escreval("======== PACOTES VENDIDOS ========")
         se totalPacotes = 0 entao
            escreval("Nenhum pacote cadastrado.")
            escreval("--------------------------------------------------------------")
            escreval(" Pacote    |     Valor    |     Data     |  Forma de Pagamento")
            escreval("--------------------------------------------------------------")
            para contadorDePacotes de 1 ate totalPacotes faca
               escreval("|    ", pacote[contadorDePacotes]," | R$",valorPacote[contadorDePacotes]:5:2," | ",dataPacote[contadorDePacotes]," | ",formaPagamento[contadorDePacotes]," |")
            fimpara
            escreval("--------------------------------------------------------------")
            escreval("Pressione ENTER para voltar ao menu.")
            leia(opcao)
            limpatela
         senao
            escreval("-------------------------------------------------------------------")
            escreval("--------------------------------------------------------------")
            escreval(" Pacote    |     Valor    |     Data     |  Forma de Pagamento")
            escreval("--------------------------------------------------------------")
            para contadorDePacotes de 1 ate totalPacotes faca
               escreval(" ",pacote[contadorDePacotes],"     |   R$",valorPacote[contadorDePacotes]:5:2,"   | ",dataPacote[contadorDePacotes],"   | ",formaPagamento[contadorDePacotes],"  ")
            fimpara
            escreval("-------------------------------------------------------------------")
         fimse
         escreval("Pressione ENTER para voltar ao menu.")
         leia(opcao)
         limpatela

         // Cadastrar Venda
      caso 3
         repita
            totalVendas <- totalVendas + 1
            escreval("Cadastro de Venda:")
            escreva("Informe o nome do produto: ")
            leia(produto[totalVendas])
            escreva("Informe a quantidade: ")
            leia(quantidade[totalVendas])
            escreva("Informe o valor unitário: ")
            leia(valorUnitario[totalVendas])

            escreval("Venda cadastrada com sucesso!")
            escreval("Valor total: R$", (quantidade[totalVendas] * valorUnitario[totalVendas]):5:2)
            escreval("----------------------------------")

            escreva("Deseja cadastrar outra venda? (1 - Sim / 2 - Não): ")
            leia(opcao)

         ate (opcao <> 1)
         opcao <- 0 // Retorna ao menu

         // Cadastrar Pacote Promocional
      caso 4
         repita
            totalPacotes <- totalPacotes + 1
            escreval("Cadastro de Pacote Promocional:")

            escreva("Informe o nome do pacote: ")
            leia(pacote[totalPacotes])

            escreva("Informe o valor do pacote: ")
            leia(valorPacote[totalPacotes])

            escreva("Informe a data do pacote (Ex.: 19/06/2025): ")
            leia(dataPacote[totalPacotes])

            escreva("Informe a forma de pagamento: ")
            leia(formaPagamento[totalPacotes])

            escreval("----------------------------------")
            escreval("Pacote cadastrado com sucesso!")
            escreval("----------------------------------")

            escreva("Deseja cadastrar outro pacote? (1 - Sim / 2 - Não): ")
            leia(opcao)

         ate (opcao <> 1)
         opcao <- 0 // Retorna ao menu

         // Relatórios
      caso 5
         repita
            escreval("====== SUBMENU RELATÓRIOS ======")
            escreval("1 - Vendas Mensais")
            escreval("2 - Pacotes Vendidos")
            escreval("3 - Anual")
            escreval("4 - Voltar")
            escreval("=================================")
            escreva("Escolha uma opção: ")
            leia(subRelatorio)

            escolha subRelatorio

               // Relatório de Vendas Mensais
            caso 1
               escreval("========= RELATÓRIO DE VENDAS =========")
               se totalVendas = 0 entao
                  escreval("Nenhuma venda cadastrada.")
               senao
                  escreval("------------------------------------------------------------")
                  escreval("| Produto       | Quantidade | Valor Unitário | Total     |")
                  escreval("------------------------------------------------------------")
                  para contadorDeVenda de 1 ate totalVendas faca
                     escreval("| ", produto[contadorDeVenda],"            |    ",quantidade[contadorDeVenda],"        |    R$",valorUnitario[contadorDeVenda]:5:2,  "      | R$",(quantidade[contadorDeVenda] * valorUnitario[contadorDeVenda]):5:2," |")
                  fimpara
                  escreval("------------------------------------------------------------")
               fimse
               escreval("Pressione ENTER para voltar ao menu de relatórios.")
               leia(opcao)
               limpatela

               // Relatório de Pacotes Vendidos
            caso 2
               escreval("========= RELATÓRIO DE PACOTES =========")
               se totalPacotes = 0 entao
                  escreval("Nenhum pacote cadastrado.")
               senao
                  escreval("------------------------------------------------------------------------")
                  escreval("| Pacote       | Valor       | Data          | Forma de Pagamento   |")
                  escreval("------------------------------------------------------------------------")
                  para contadorDePacotes de 1 ate totalPacotes faca
                     escreval(" ",pacote[contadorDePacotes],"    |   R$",valorPacote[contadorDePacotes]:5:2,"   | ",dataPacote[contadorDePacotes],"   | ",formaPagamento[contadorDePacotes],"  ")
                  fimpara
                  escreval("------------------------------------------------------------------------")
               fimse
               escreval("Pressione ENTER para voltar ao menu de relatórios.")
               leia(opcao)
               limpatela

               // Relatório Anual
            caso 3
               escreval("Pressione ENTER para voltar.")
               leia(opcao)
               limpatela

               // Voltar
            caso 4
               escreval("Voltando ao menu principal...")
               limpatela

            outrocaso
               escreval("Opção inválida!")

            fimescolha

         ate (subRelatorio = 4)

         // Sair
      caso 6
         escreval("Saindo do sistema...")

      outrocaso
         escreval("Opção inválida!")

      fimescolha

   ate (opcao = 6)

   escreval("======== FIM DO SISTEMA =========")
fimalgoritmo
