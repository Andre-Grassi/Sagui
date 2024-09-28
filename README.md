# Microprocessador Sagui
Esse repositório contém o trabalho 1 e 2 da disciplina Arquitetura e Organização de Computadores do curso de Ciência da Computação da Universidade Federal do Paraná.

Os trabalhos consistem na implementação de uma ISA (*Instruction Set Architecture*) fictícia de 8 bits chamada de Sagui e outra ISA chamada Sagui em Bando. 

O circuitos foram implementados no programa [Logisim Evolution](https://github.com/logisim-evolution/logisim-evolution), versão 3.8.

## Estrutura dos Diretórios

### Sagui
No diretório `sagui` está o conteúdo do trabalho 1. Nele está o [pdf do relatório](https://github.com/Andre-Grassi/Sagui/blob/main/Relat%C3%B3rio_Sagui.pdf) escrito para o trabalho, com explicações sobre detalhes da implementação e uma visão geral do projeto.

Nele também está a implementação do Sagui no arquivo `sagui.circ` que é possível abrir com o programa Logisim Evolution e ver o processador em funcionamento.

O diretório também possui alguns códigos em C e em Assembly fictício da ISA Sagui para implementar dois programas: um de teste de instruções e outro de soma de vetores.

O arquivo ROM_Soma é o arquivo de memória do Logisim com as instruções para executar os programas descritos acima.

### Sagui-Vetorial
No diretório `sagui_vetorial` está o conteúdo do trabalho 2, com o [pdf do relatório](https://github.com/Andre-Grassi/Sagui/blob/main/sagui-vetorial/Relat%C3%B3rio_Sagui_em_Bando.pdf), implementação no arquivo `sagui_vet.circ`, códigos em C e assembly, além do arquivo de memória nomeado `test`.
