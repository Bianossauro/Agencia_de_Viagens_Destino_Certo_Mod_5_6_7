algoritmo "Projetos_e_Parceria"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Hudson Neves e Silva
// Descrição   : Projetos promocionais, parcerias, ações de marketing.

var
   op: inteiro
   orcamento: real
   nomeProjeto: vetor[1..100] de caractere
   descProjeto: vetor[1..100] de caractere
   inicioProjeto: vetor[1..100] de caractere
   fimProjeto: vetor[1..100] de caractere
   orcamentoProjeto: vetor[1..100] de real
   nomeParceria: vetor[1..100] de caractere
   contatoParceria: vetor[1..100] de caractere
   foneParceria: vetor[1..100] de caractere
   descParceria: vetor[1..100] de caractere
   nomeAcoes: vetor[1..100] de caractere
   descAcoes: vetor[1..100] de caractere
   dataAcoes: vetor[1..100] de caractere
   // Contadores
   contProjeto, contParceria, contAcoes: inteiro
   // Controles
   i, tmp: inteiro
   tcl: caractere
inicio
   contProjeto <- 0
   contParceria <- 0
   contAcoes <- 0

   // Loop principal (enquanto o usuário não escolher sair)
   enquanto verdadeiro faca
      escreval("=== MENU PRINCIPAL ===")
      escreval("1. Cadastrar Projeto Promocional")
      escreval("2. Cadastrar Parceria")
      escreval("3. Cadastrar Ação de Marketing")
      escreval("4. Listar Projetos")
      escreval("5. Listar Parcerias")
      escreval("6. Listar Ações de Marketing")
      escreval("7. Listar Todos os Cadastros")
      escreval("8. Sair")
      escreva("Escolha uma opção: ")
      leia(op)

      se op = 8 entao
         escreval("")
         escreval("...Saindo do sistema...")
         //limpatela
         interrompa
      fimse

      escolha op
      caso 1
         limpatela
         // Cadastrar Projeto
         se contProjeto < 100 entao
            contProjeto <- contProjeto + 1
            escreva("Nome do Projeto: ")
            leia(nomeProjeto[contProjeto])
            escreva("Descrição: ")
            leia(descProjeto[contProjeto])
            escreva("Data de Início (DD/MM/AAAA): ")
            leia(inicioProjeto[contProjeto])
            escreva("Data de Término (DD/MM/AAAA): ")
            leia(fimProjeto[contProjeto])
            escreva("Orçamento (R$): ")
            leia(orcamentoProjeto[contProjeto])
            escreval("")
            escreval("*== Projeto de Nº",contProjeto," CADASTRADO COM SUCESSO ==*")
            escreval("-> Nome do Projeto: ",nomeProjeto[contProjeto])
            escreval("-> Descrição: ",descProjeto[contProjeto])
            escreval("-> Data Início: ",inicioProjeto[contProjeto])
            escreval("-> Data Final: ",fimProjeto[contProjeto])
            escreval("-> Total R$",orcamentoProjeto[contProjeto]:3:3)
            escreval("*===================================================*")
            escreval("")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("Limite de Projetos atingido (100/100)!")
         fimse

      caso 2
         // Cadastrar Parcerias
         limpatela
         se (contParceria < 100) entao
            //inicia no primeiro indice do vetor
            contParceria <- contParceria + 1
            escreva("Empresa Parceira: ")
            leia(nomeParceria[contParceria])
            escreva("Descrição: ")
            leia(descParceria[contParceria])
            escreva("Nome de Contato: ")
            leia(contatoParceria[contParceria])
            escreva("Telefone com DDD: ")
            leia(foneParceria[contParceria])
            escreval("*== Parceria de Nº",contParceria," CADASTRADO COM SUCESSO ==*")
            escreval("-> Empresa: ",nomeParceria[contParceria])
            escreval("-> Descrição: ",descParceria[contParceria])
            escreval("-> Nome para Contactar: ",contatoParceria[contParceria])
            escreval("-> Telefone: ",foneParceria[contParceria])
            escreval("*===================================================*")
            escreval("")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("Limite de parcerias atingido (100)!")
         fimse

      caso 3
         limpatela
         // Cadastrar Ação de Marketing
         se contAcoes < 100 entao
            contAcoes <- contAcoes + 1
            escreva("Nome da Ação: ")
            leia(nomeAcoes[contAcoes])
            escreva("Descrição: ")
            leia(descAcoes[contAcoes])
            escreva("Data da Ação (DD/MM/AAAA): ")
            leia(dataAcoes[contAcoes])
            //próximo índice do vetor Ação de Marketing
            escreval("*== Ação de Marketing Nº",contAcoes," CADASTRADO COM SUCESSO ==*")
            escreval("-> Nome da Ação: ",nomeAcoes[contAcoes])
            escreval("-> Descricão: ",descAcoes[contAcoes])
            escreval("-> Data da Ação: ",dataAcoes[contAcoes])
            escreval("*===================================================*")
            escreval("")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("Limite de parcerias atingido (100)!")
         fimse

      caso 4
         limpatela
         // Listar Projetos
         se (contProjeto = 0) entao
            escreval("=== LISTA DE PROJETOS ===")
            escreval("Nenhum projeto cadastrado.")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("=== LISTA DE PROJETOS ===")
            para i de 1 ate contProjeto faca
               escreval(i,"º Projeto: ",nomeProjeto[i])
               escreval("    Descrição: ",descProjeto[i])
               escreval("    Período: ",inicioProjeto[i], " a ",fimProjeto[i])
               escreval("    Orçamento: R$ ",orcamentoProjeto[i]:3:3)
               escreval("---------------------------------------")
            fimpara
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         fimse

      caso 5
         limpatela
         // Listar Parcerias
         se (contParceria = 0) entao
            escreval("=== LISTA DE PARCERIAS ===")
            escreval("Nenhuma parceria cadastrada.")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("=== LISTA DE PARCERIAS ===")
            para i de 1 ate contParceria faca
               escreval(i,"º Empresa:",nomeParceria[i])
               escreval("    Descrição: ",descParceria[i])
               escreval("    Nome de contato: ",contatoParceria[i])
               escreval("    Telefone: ",foneParceria[i])
               escreval("*===================================================*")
               escreval("")
            fimpara
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         fimse

      caso 6
         limpatela
         // Listar Ações de Marketing
         se (contAcoes = 0) entao
            escreval("=== AÇÃO DE MARKETING ===")
            escreval("Nenhuma Ação de Marketing cadastrada.")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("=== LISTA DE AÇÕES DE MARKETING ===")
            para i de 1 ate contAcoes faca
               escreval(i,"º Ações de Marketing")
               escreval("    Empresa:",nomeAcoes[i])
               escreval("    Nome da Ação: ",nomeAcoes[i])
               escreval("    Descricão: ",descAcoes[i])
               escreval("    Data da Ação: ",dataAcoes[i])
               escreval("*=================================")
            fimpara
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         fimse

      caso 7
         limpatela
         // Mostra todos os cadastros no sistema
         se ((contProjeto = 0) e (contParceria = 0) e (contAcoes = 0)) entao
            escreval("Nenhum cadastro registrado ainda.")
            escreval("")
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
            limpatela
         senao
            escreval("")
            escreval("=====> PROJETOS ")
            para i de 1 ate contProjeto faca
               escreval(i,"º Projeto: ",nomeProjeto[i])
               escreval("    Descrição: ",descProjeto[i])
               escreval("    Período: ",inicioProjeto[i], " a ",fimProjeto[i])
               escreval("    Orçamento: R$ ",orcamentoProjeto[i]:3:3)
               escreval("*=========================================*")
            fimpara
            escreval("")
            escreval("=====> PARCERIAS ")
            para i de 1 ate contParceria faca
               escreval(i,"º Empresa:",nomeParceria[i])
               escreval("    Descrição: ",descParceria[i])
               escreval("    Nome de contato: ",contatoParceria[i])
               escreval("    Telefone: ",foneParceria[i])
               escreval("*=========================================*")
               escreval("")
            fimpara
            escreval("")
            escreval("=====> AÇÕES DE MARKETING ")
            para i de 1 ate contAcoes faca
               escreval(i,"º Ações de Marketing")
               escreval("    Empresa:",nomeAcoes[i])
               escreval("    Nome da Ação: ",nomeAcoes[i])
               escreval("    Descricão: ",descAcoes[i])
               escreval("    Data da Ação: ",dataAcoes[i])
               escreval("*=========================================")
            fimpara
            escreval("Pressione qualquer tecla para continuar...")
            leia(tcl)
         fimse
         limpatela

      outrocaso
         escreval("Opção inválida! Tente novamente.")
         limpatela
      fimescolha
   fimenquanto
fimalgoritmo
