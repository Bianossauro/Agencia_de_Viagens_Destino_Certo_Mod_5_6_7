# Análise do Código "Operacoes_e_Logistica"
## Objetivos e Escopo

O código implementa um sistema de gerenciamento para operações logísticas, com foco em três principais funcionalidades:

Transferências: Cadastro e listagem de transferências logísticas

Escalonamentos: Agendamento de veículos, datas e rotas

Itinerários: Gestão de rotas completas com origem, destino, horário e veículo

🖥️ O sistema permite cadastrar, listar e gerar relatórios dessas operações através de um menu interativo.

## Estrutura de Dados Usada
O programa utiliza vetores (arrays) para armazenar os dados:

trfs[1..10]: Armazena as transferências (máx. 10)

Para escalonamentos:

escD[1..10]: Datas dos escalonamentos

escV[1..10]: Veículos dos escalonamentos

escR[1..10]: Rotas dos escalonamentos

Para itinerários:

itO[1..10]: Origem dos itinerários

itD[1..10]: Destino dos itinerários

itH[1..10]: Horários dos itinerários

itV[1..10]: Veículos dos itinerários

## Regras de Negócio Aplicadas
Limite de cadastros: Máximo de 100 registros para cada tipo (transferências, escalonamentos, itinerários)

Validação de dados: Verifica se existem cadastros antes de listar

Navegação hierárquica: Menu principal → Submenus específicos → Retorno

Relatórios consolidados: Possibilidade de gerar relatórios individuais ou completos

Descrição dos Processos
Menu Principal: Controla o acesso às três áreas principais e relatórios

Submenus: Cada área (transferências, escalonamentos, itinerários) tem seu próprio menu com opções de cadastro e listagem

Cadastros: Incluem validação de limite e coleta de dados específicos

Listagens: Mostram todos os registros cadastrados para cada tipo

Relatórios: Oferece visualização consolidada dos dados

🖥️Trechos Importantes do Código Comentados:
// Variáveis globais
var
   trfs: vetor [1..10] de caractere  // Armazena transferências
   // Vetores para itinerários (origem, destino, horário, veículo)
   itO, itD, itH, itV: vetor [1..10] de caractere  
   // Vetores para escalonamentos (data, veículo, rota)
   escD, escV, escR: vetor [1..10] de caractere
   op, sOp, i, contT, contE, contI: inteiro  // Contadores e opções
   tmpD, tmpV, tmpR, tmpO, tmpH: caractere  // Temporários para leitura

   // Estrutura principal de repetição do menu
repita
   limpatela
   escreval("=== SISTEMA DE OPERAÇÕES E LOGÍSTICA ===")
   escreval("1 - Gerenciar Transferências")
   // ... outras opções ...
   leia(op)
   
   escolha op  // Controla a navegação entre menus
      caso 1: // Transferências
      caso 2: // Escalonamentos
      caso 3: // Itinerários
      caso 4: // Relatórios
      caso 0: // Sair
   fimescolha
ate (op = 0)  // Condição de saída do sistema

// Exemplo de cadastro (padrão similar para todos os tipos)
se contT < 10 entao  // Verifica limite
   contT <- contT + 1  // Incrementa contador
   escreva("Informe os detalhes da Transferência ",contT, ": ")
   leia(trfs[contT])  // Armazena no vetor
   escreval("Transferência cadastrada com sucesso!")
senao
   escreval("Limite de transferência atingido!")  // Mensagem de erro
fimse

// Exemplo de listagem (padrão similar para todos os tipos)
se (contT = 0) entao  // Verifica se há registros
   escreval("Nenhuma transferência cadastrada.")
senao
   para i de 1 ate contT faca  // Percorre todos os registros
      escreval(i, ". ", trfs[i])  // Exibe cada item numerado
   fimpara
fimse

// Relatório completo (todos os dados)
escreval("=== RELATÓRIO DE TRANSFERÊNCIAS ===")
para i de 1 ate contT faca
   escreval(i, ". ", trfs[i])
fimpara
// ... repete para escalonamentos e itinerários ...

🧠 O código segue um padrão consistente para todas as operações, com estruturas similares para cada módulo (transferências, escalonamentos e itinerários), garantando uma experiência uniforme para o usuário.

-----------------------------------------------------------

# Análise do Código "Projetos_e_Parceria"
## Objetivos e Escopo

O código implementa um sistema de gerenciamento para:

Projetos promocionais: Cadastro de iniciativas de marketing com datas e orçamento

Parcerias comerciais: Registro de empresas parceiras e contatos

Ações de marketing: Gestão de campanhas e atividades promocionais

O sistema permite cadastrar, listar e visualizar de forma consolidada todas as informações através de um menu interativo.

🧠 Estrutura de Dados Usada
O programa utiliza vetores (arrays) para armazenar os dados:

Para projetos:

nomeProjeto[1..100]: Nomes dos projetos

descProjeto[1..100]: Descrições

inicioProjeto[1..100] e fimProjeto[1..100]: Datas de início e término

orcamentoProjeto[1..100]: Valores orçados

Para parcerias:

nomeParceria[1..100]: Nomes das empresas

descParceria[1..100]: Descrições das parcerias

contatoParceria[1..100]: Pessoas de contato

foneParceria[1..100]: Telefones

Para ações de marketing:

nomeAcoes[1..100]: Nomes das ações

descAcoes[1..100]: Descrições

dataAcoes[1..100]: Datas de realização

🧠 Regras de Negócio Aplicadas
Limite de cadastros: Máximo de 100 registros para cada tipo (projetos, parcerias, ações)

Validação de dados: Verifica se existem cadastros antes de listar

Formatação de saída: Apresenta dados de forma organizada com bordas e separadores

Consistência de dados: Mantém contadores separados para cada tipo de registro

Navegação intuitiva: Menu único com todas opções disponíveis

🖥️ Descrição dos Processos
Menu Principal: Oferece todas as opções em um único nível

Cadastros: Incluem:

Projetos (nome, descrição, datas, orçamento)

Parcerias (empresa, descrição, contato, telefone)

Ações (nome, descrição, data)

Listagens: Mostram registros individuais ou consolidados

Saída: Opção dedicada para encerrar o sistema

Trechos Importantes do Código Comentados:

// Variáveis globais
var
   // Vetores para projetos (capacidade para 100 registros cada)
   nomeProjeto, descProjeto, inicioProjeto, fimProjeto: vetor[1..100] de caractere
   orcamentoProjeto: vetor[1..100] de real
   // Vetores para parcerias
   nomeParceria, contatoParceria, foneParceria, descParceria: vetor[1..100] de caractere
   // Vetores para ações de marketing
   nomeAcoes, descAcoes, dataAcoes: vetor[1..100] de caractere
   // Contadores independentes para cada tipo
   contProjeto, contParceria, contAcoes: inteiro

// Estrutura principal de repetição (loop infinito)
enquanto verdadeiro faca
   // Menu principal com todas opções visíveis
   escreval("=== MENU PRINCIPAL ===")
   escreval("1. Cadastrar Projeto Promocional")
   // ... outras opções ...
   escreval("8. Sair")
   
   se op = 8 entao  // Condição de saída explícita
      escreval("...Saindo do sistema...")
      interrompa  // Comando para sair do loop
   fimse
   
   escolha op  // Controle de fluxo para todas opções
      caso 1: // Projetos
      caso 2: // Parcerias
      // ... outros casos ...
   fimescolha
fimenquanto

// Padrão de cadastro (similar para todos os tipos)
se contProjeto < 100 entao  // Verifica limite
   contProjeto <- contProjeto + 1  // Incrementa contador
   // Coleta todos os dados necessários
   escreva("Nome do Projeto: ")
   leia(nomeProjeto[contProjeto])
   // ... outros campos ...
   
   // Feedback visual completo do cadastro
   escreval("*== Projeto de Nº",contProjeto," CADASTRADO COM SUCESSO ==*")
   escreval("-> Nome do Projeto: ",nomeProjeto[contProjeto])
   // ... outros dados ...
   escreval("*===================================================*")
senao
   escreval("Limite de Projetos atingido (100/100)!")  // Mensagem de erro
fimse

// Exemplo de listagem detalhada
escreval("=== LISTA DE PROJETOS ===")
para i de 1 ate contProjeto faca  // Percorre todos registros
   escreval(i,"º Projeto: ",nomeProjeto[i])
   escreval("    Descrição: ",descProjeto[i])  // Identação para formatação
   escreval("    Período: ",inicioProjeto[i], " a ",fimProjeto[i])
   escreval("    Orçamento: R$ ",orcamentoProjeto[i]:3:3)  // Formatação decimal
   escreval("---------------------------------------")  // Separador visual
fimpara

// Relatório consolidado (todos os cadastros)
escreval("=====> PROJETOS ")
para i de 1 ate contProjeto faca
   // ... lista projetos ...
fimpara

escreval("=====> PARCERIAS ")
para i de 1 ate contParceria faca
   // ... lista parcerias ...
fimpara

escreval("=====> AÇÕES DE MARKETING ")
para i de 1 ate contAcoes faca
   // ... lista ações ...
fimpara

🧠 O código apresenta uma estrutura linear simples, com todos os recursos acessíveis diretamente do menu principal, diferente da versão anterior que tinha submenus hierárquicos. Mantém um padrão consistente de cadastro e listagem para todos os tipos de registros.

----------------------------------------------------------

# Análise do Código "Business_Intelligence"
## Objetivos e Escopo
O código implementa um sistema de Business Intelligence (BI) para controle de:

Vendas individuais: Registro de produtos vendidos, quantidades e valores

Pacotes promocionais: Gestão de ofertas combinadas com formas de pagamento

Análise de dados: Geração de relatórios para tomada de decisão

O sistema permite cadastrar, visualizar e analisar dados comerciais através de um menu interativo.

💻 Estrutura de Dados Usada
O programa utiliza vetores (arrays) para armazenar os dados:

Para vendas:

produto[1..10]: Nomes dos produtos

quantidade[1..10]: Quantidades vendidas

valorUnitario[1..10]: Preços unitários

Para pacotes:

pacote[1..10]: Nomes dos pacotes

valorPacote[1..10]: Valores dos pacotes

dataPacote[1..10]: Datas de venda

formaPagamento[1..10]: Métodos de pagamento

🧠 Regras de Negócio Aplicadas
Limite de cadastros: Máximo de 10 registros para cada tipo (vendas e pacotes)

Cálculos automáticos: Calcula totais de vendas (quantidade × valor unitário)

Validação de dados: Verifica se existem cadastros antes de gerar relatórios

Formatação profissional: Relatórios com bordas e alinhamento para fácil leitura

Navegação hierárquica: Menu principal → Submenu de relatórios

Descrição dos Processos
Menu Principal: Oferece acesso a todas as funcionalidades

Cadastros: Permite registrar múltiplas vendas ou pacotes em sequência

Visualizações: Mostra dados cadastrados em formato tabular

Relatórios: Submenu com opções de análise específicas

Saída: Encerramento controlado do sistema

Trechos Importantes do Código Comentados:

// Variáveis globais
var
   // Vetores para vendas (capacidade para 10 registros)
   produto: vetor [1..10] de caractere
   quantidade: vetor [1..10] de inteiro
   valorUnitario: vetor [1..10] de real
   
   // Vetores para pacotes promocionais
   pacote: vetor [1..10] de caractere
   valorPacote, dataPacote, formaPagamento: vetor [1..10] de caractere
   
   // Contadores
   totalVendas, totalPacotes, contadorDePacotes, contadorDeVenda: inteiro

// Estrutura principal de repetição
repita
   // Menu principal completo
   escreval("========= MENU PRINCIPAL =========")
   escreval("1 - Análise de Vendas")
   // ... outras opções ...
   escreval("6 - Sair")
   
   escolha opcao  // Controle de fluxo principal
      caso 1: // Análise
      caso 2: // Visualização de pacotes
      // ... outros casos ...
   fimescolha
ate (opcao = 6)  // Condição de saída

// Cadastro de venda (com repetição)
repita
   totalVendas <- totalVendas + 1  // Incrementa contador
   // Coleta todos os dados necessários
   escreva("Informe o nome do produto: ")
   leia(produto[totalVendas])
   // ... outros campos ...
   
   // Feedback com cálculo automático
   escreval("Valor total: R$", (quantidade[totalVendas] * valorUnitario[totalVendas]):5:2)
   
   // Controle de repetição
   escreva("Deseja cadastrar outra venda? (1 - Sim / 2 - Não): ")
   leia(opcao)
ate (opcao <> 1)

// Exemplo de relatório formatado
escreval("------------------------------------------------------------")
escreval("| Produto       | Quantidade | Valor Unitário | Total     |")
escreval("------------------------------------------------------------")
para contadorDeVenda de 1 ate totalVendas faca
   // Alinhamento visual com formatação decimal
   escreval("| ", produto[contadorDeVenda],"            |    ",quantidade[contadorDeVenda],"        |    R$",valorUnitario[contadorDeVenda]:5:2,  "      | R$",(quantidade[contadorDeVenda] * valorUnitario[contadorDeVenda]):5:2," |")
fimpara
escreval("------------------------------------------------------------")

// Submenu de relatórios
repita
   escreval("====== SUBMENU RELATÓRIOS ======")
   escreval("1 - Vendas Mensais")
   // ... outras opções ...
   escolha subRelatorio
      caso 1: // Vendas
      caso 2: // Pacotes
      // ... outros casos ...
   fimescolha
ate (subRelatorio = 4)  // Condição de retorno

🤖 O código apresenta uma estrutura bem organizada com:

Separação clara entre vendas individuais e pacotes

Formatação profissional nos relatórios

Controle preciso de fluxo entre menus

Feedback visual após cada operação

Cálculos automáticos de valores totais

Diferenciais importantes:

Tabelas formatadas para melhor visualização

Possibilidade de cadastro múltiplo em sequência

Submenu dedicado para relatórios analíticos

Controle rigoroso dos limites de armazenamento.

📚📚📚---------------------------------------📚📚📚

![Linha de Aprendizado](https://img.shields.io/badge/%20Linha%20de%20Aprendizado-FFFF00)

![VisualG](https://img.shields.io/badge/VisualG-FF7F00)

![Lógica de programação com Portugol Joice Barbosa Mendes](https://img.shields.io/badge/L%C3%B3gica%20de%20programa%C3%A7%C3%A3o%20com%20Portugol%20-%20Joice%20Barbosa%20Mendes-007FFF)

![Equipe Responsável pela Elaboração:](https://img.shields.io/badge/Equipe%20Respons%C3%A1vel%20pela%20Elabora%C3%A7%C3%A3o:-EBC79E)
![Product Owner](https://img.shields.io/badge/Hudson-Product%20Owner-orange)
![Scrum](https://img.shields.io/badge/Scrum-Ana-000000)
![Developers](https://img.shields.io/badge/Developers-Daniel%2C%20Vanderli%2C%20Ivo%2C%20Wiliamemerson%2C%20Larissy-000000)
