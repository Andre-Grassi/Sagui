#       "Pseudo-assembly" da arquitetura Sagui em Bando           #
#      ##################################################         #
#                                                                 #
#          Organização dos comentários dos comandos:              #
#                                                                 #                
# mnem. # sign. da operação --> # instr. em bin. = instr. em hex. #


######## Operações Escalarares ########

## MOV ##

# Inicializa registrador 1 com 00000000
# Como em uma cpu real, teríamos lixo de memória nos registradores,
# o que é representado por "?"
movh 0000   # R[1] = {Imm + R[1](3:0)} = {0000 + ????} = 0000???? = ? --> 00100000 = 20
movl 0000   # R[1] = {R[1](7:4) + Imm.} = {0000 + 0000} = 00000000 = 0 --> 00110000 = 30 

# Coloca o valor 112 no R[1]
movh 0111   # R[1] = {Imm + R[1](3:0)} = {0111 + 0000} = 01110000 = 112 = 70 (hex) --> 00100111 = 27

# Reseta R[1]
movh 0000   # R[1] = {Imm + R[1](3:0)} = {0000 + 0000} = 00000000 = 0 --> 00100000 = 20

# Coloca o valor 7 no R[1]
movl 0111   # R[1] = {R[1](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 -->00110111 = 37


## STORE ##

# Guarda o valor do R[1] na memória na posição 0
st $1, $0 # M[R[0]] = R[1] <=> M[0] = 7 --> 00010100 = 14


## LOAD ##

# Carrega o valor da memória na posição 0 para o R[2]
ld $2, $0 # R[2] = M[R[0]] <=> R[2] = M[0] --> 00001000 = 08

# Carrega o valor da memória na posição 0 para o R[3]
ld $3, $0 # R[3] = M[R[0]] <=> R[3] = M[0] --> 00001100 = 0C


## ADD ##

# Soma R[2] com R[3]
add $2, $3 # R[2] = R[2] + R[3] = 7 + 7 = 14 --> 01001011 = 4B


## SUB ##

# Subtrai R[3] de R[2]
sub $2, $3 # R[2] = R[2] - R[3] = 14 - 7 = 7 --> 01011011 = 5B


## AND ##

# And de R[2] com R[3]
and $2, $3 # R[2] = R[2] & R[3] = 7 & 7 = 7 --> 01101011 = 6B

########### Tudo certo até aqui no scalar ###########


# BRZR #

# Coloca o valor 16 = 10 (hex) no R[1]
movl 0000  # R[1] = {R[1](7:4) + Imm.} = {0000 + 0000} = 00000000 = 0 --> 00110000 = 30
movh 0001  # R[1] = {Imm + R[1](3:0)} = {0001 + 0000} = 00010000 = 16 = 10 (hex) --> 00100001 = 21

# Pula para o endereço A0
brzr $0, $1 # if (R[0] == 0) PC = R[1] = 160 = A0 (hex) --> 01110001 = 71


######## Operações Vetoriais ########

## MOV ##

# Inicializa registradores 1 com 00000000
movh 0000   # R[1] = {Imm + R[1](3:0)} = {0000 + ????} = 0000???? = ? --> 10100000 = A0
movl 0000   # R[1] = {R[1](7:4) + Imm.} = {0000 + 0000} = 00000000 = 0 --> 10110000 = B0

# Coloca o valor 112 nos R[1] 
movh 0111   # R[1] = {Imm + R[1](3:0)} = {0111 + 0000} = 01110000 = 112 = 70 (hex) --> 10100111 = A7

# Reseta os R[1]
movh 0000   # R[1] = {Imm + R[1](3:0)} = {0000 + 0000} = 00000000 = 0 --> 10100000 = A0

# Coloca o valor 7 nos R[1]
movl 0111   # R[1] = {R[1](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10110111 = B7


## STORE ##

# Guarda os valores dos R[1] nas memórias na posição de 0 a 3
# pois o R[0] dos vetoriais varia de 0 a 3
st $1, $0 # M[R[0]] = R[1] <=> M[0] = 7 --> 10010100 = 94


## LOAD ##

# Carrega os valores das memórias na posição 0 para os R[2] 
ld $2, $0 # R[2] = M[R[0]] <=> R[2] = M[0] --> 10001000 = 88 

# Carrega os valores das memórias na posição 0 para os R[3]
ld $3, $0 # R[3] = M[R[0]] <=> R[3] = M[0] --> 10001100 = 8C 


## ADD ##

# Soma os R[2] com os R[3]
add $2, $3 # R[2] = R[2] + R[3] = 7 + 7 = 14 --> 11001011 = CB


## SUB ##

# Subtrai os R[3] de R[2]
sub $2, $3 # R[2] = R[2] - R[3] = 14 - 7 = 7 --> 11011011 = DB


## AND ##

# And dos R[2] com os R[3]
and $2, $3 # R[2] = R[2] & R[3] = 7 & 7 = 7 --> 11101011 = EB

## OR ##

# Or dos R[2] com os R[3]
or $2, $3 # R[2] = R[2] | R[3] = 7 | 7 = 7 --> 11111011 = FB



## PROGRAMA DE SOMA ##

# Inicializa VR[1] com 0
movh 0000
movl 0000

# Guarda no endereço 0 o valor 0
st $1, $1

# Inicializa VR[2] e VR[3] com 0
ld $2, $1
ld $3, $1

# Guarda no VR[1] o valor do endereço em que será guardado o valor da
# variável de controle --> Endereço 30 (hex) = 48 (dec)
movl 0000
movh 0011

# Guarda no endereço 0 o endereço 30
st $1, $2

# Guarda no VR[2] o endereço da variável de controle
ld $2, $2

# Inicializa o valor da variável de controle com 10 nos VPE
movh 0000
movl 1010

# Guarda no endereço 30 de cada RAM o valor da variável de controle
st $1, $2

# Inicializa SR[1], SR[2] e SR[3] com 0
and $1, $0
and $2, $0
and $3, $0

# Coloca 1 no SR[1]
movl 0001

# Guarda no endereço 0 o valor 1
st $1, $0

# Coloca 1 no SR[2]
ld $2, $0

# Coloca o valor 11 (para controlar o laço) no SR[1]
movl 1011

# Início do laço de inicialização dos vetores
brzr $1, ??







