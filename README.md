# Microprocessador Sagui
Esse repositório contém o trabalho 1 da disciplina Arquitetura e Organização de Computadores do curso de Ciência da Computação da Universidade Federal do Paraná.

O trabalho consiste na implementação de uma ISA (*Instruction Set Architecture*) fictícia de 8 bits chamada de Sagui. 

O circuito foi implementado no programa [Logisim Evolution](https://github.com/logisim-evolution/logisim-evolution), versão 3.8.

## Estrutura dos Diretórios
No diretório principal está o [pdf do relatório](https://github.com/Andre-Grassi/Sagui/blob/main/Relat%C3%B3rio_Sagui.pdf) escrito para o trabalho, com explicações sobre detalhes da implementação e uma visão geral do projeto.

Dentro do diretório sagui está a implementação do Sagui no arquivo `sagui.circ` que é possível abrir com o programa Logisim Evolution e ver o processador em funcionamento.

Nesse diretório também está presente alguns códigos em C e em Assembly fictício da ISA Sagui para implementar dois programas: um de teste de instruções e outro de soma de vetores.

O arquivo ROM_Soma é o arquivo de memória do Logisim com as instruções para executar os programas descritos acima.
