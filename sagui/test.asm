#          "Pseudo-assembly" da arquitetura Sagui                 #
#      ##################################################         #
#                                                                 #
#          Organização dos comentários dos comandos:              #
#                                                                 #                
# mnem. # sign. da operação --> # instr. em bin. = instr. em hex. #


######## MOV ########

# Inicializa registrador 0 com 00000000
# Como em uma cpu real, teríamos lixo de memória nos registradores,
# o que é representado por "?"
movh 0000   # R[0] = {Imm + R[0](3:0)} = {0000 + ????} = 0000???? = ? --> 01110000 = 70
movl 0000   # R[0] = {R[0](7:4) + Imm.} = {0000 + 0000} = 00000000 = 0 --> 10000000 = 80 

# Coloca o valor 112 no R[0]
movh 0111   # R[0] = {Imm + R[0](3:0)} = {0111 + 0000} = 01110000 = 112 --> 01110111 = 77

# Reseta R[0]
movh 0000   # R[0] = {Imm + R[0](3:0)} = {0000 + 0000} = 00000000 = 0 --> 01110000 = 70

# Coloca o valor 7 no R[0]
movl 0111   # R[0] = {R[0](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10000111 = 87

# Inicializa registradores 1, 2 e 3 movendo o valor de R[0] para eles
movr $1, $0 # R[1] = R[0] = 7 --> 01100100 = 64
movr $2, $1 # R[2] = R[1] = 7 --> 01101001 = 69
movr $3, $2 # R[3] = R[2] = 7 --> 01101110 = 6E


######## ADD ########

# Soma de positivo com positivo
add $2, $1  # R[2] = R[2] + R[1] = 7 + 7 = 14 --> 10011001 = 99

# Reseta R[0]
movl 0000   # R[0] = {R[0](7:4) + Imm.} = {0000 + 0000} = 00000000 = 0 --> 10000000 = 80

# Coloca o valor -16 no R[0]
movh 1111   # R[0] = {Imm + R[0](3:0)} = {1111 + 0000} = 11110000 = -16 --> 01111111 = 7F

# Soma de positivo com negativo
add $3, $0 # R[3] = R[3] + R[0] = 7 + (-16) = -9 --> 10011100 = 9C

# Soma de negativo com negativo
add $3, $0 # R[3] = R[3] + R[0] = -9 + (-16) = -25 --> 10011100 = 9C


######## SUB ########

# Subtração de positivo com positivo
sub $2, $1 # R[2] = R[2] - R[1] = 14 - 7 = 7 --> 10101001 = A9

# Subtração de positivo com negativo
sub $2, $3 # R[2] = R[2] - R[3] = 7 - (-25) = 32 --> 10101011 = AB

# Subtração de negativo com negativo
sub $3, $0  # R[3] = R[3] - R[0] = -25 - (-16) = -9 --> 10101100 = AC


######## AND ########

# And de valores diferentes
and $2, $1 # R[2] = R[2] & R[1] = 32 & 7 = 0 --> 10111001 = B9

# And de valores iguais
and $1, $1 # R[1] = R[1] & R[1] = 7 & 7 = 7 --> 10110101 = B5

######## OR ########

# Or de valores diferentes
or $1, $0 # R[1] = R[1] | R[0] = 7 | -16 = -9 --> 11000100 = C4

# Or de valores iguais
or $1, $1 # R[1] = R[1] | R[1] = -9 | -9 = -9 --> 11000101 = C5

######## NOT ########
not $1, $1 # R[1] = !R[1] = !(-9) = 8 --> 11010101 = D5

######## SHIFT ########
# R[1] = 1
movh 0000   # R[0] = {Imm + R[0](3:0)} = {0000 + 0000} = 00000000 = 0 --> 01110000 = 70
movl 0001   # R[0] = {R[0](7:4) + Imm.} = {0000 + 0001} = 00000001 = 1 --> 10000001 = 81
movr $1, $0 # R[1] = R[0] = 1 --> 01100100 = 64

# Multiplica R[1] por 2
slr $1, $0 # R[1] = R[1] << R[0] = 1 << 1 = 2 --> 11100100 = e4

# Divide R[1] por 2
srr $1, $0 # R[1] = R[1] >> R[0] = 2 >> 1 = 1 --> 11110100 = f4

# R[0] = 7 = 00000111
movl 0111  # R[0] = {R[0](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10000111 = 87

# Máximo de slr possível, causando overflow
slr $1, $0 # R[1] = R[1] << R[0] = 1 << 7 = -128 --> 11100100 = E4

# Máximo de srr possível, causando underflow
srr $1, $0 # R[1] = R[1] << R[0] = 1 << 7 = 1 --> 11110100 = F4


######## STORE ########
st $0, $1 # M[R[1]] = R[0] <=> M[1] = 7 --> 01010001 = 51


######## LOAD ########
ld $2, $1 # R[2] = M[R[1]] <=> R[2] = M[1] --> 01001001 = 49

######## BRZR ########
# Não entra no branch
brzr $1, $0 # if (R[1] == 0) PC = R[0] = 7 --> 00000100 = 4

# Entra no branch
# Reseta R[1]
movh 0000   # 01110000 = 70
movl 0000   # 10000000 = 80
movr $1, $0 # 01100100 = 64

# R[0] = 43
movl 1011   # 10001011 = 8B
movh 0010   # 01110010 = 72

brzr $1, $0 # if (R[1] == 0) PC = R[0] = 40 --> 00000100 = 4


######## BRZI ########
# Não entra no branch
brzi 0111   # if (R[0] == 0) PC = PC + Imm = PC + 7 --> 00010111 = 17

# Entra no branch
# Reseta R[1]
movh 0000   # 01110000 = 70
movl 0000   # 10000000 = 80
movr $1, $0 # 01100100 = 64

brzi 0111   # if (R[0] == 0) PC = PC + Imm = PC + 7 --> 00010111 = 17


######## JR ########
movl 0001   # R[0] = 00000001 --> 10000001 = 81
movh 0100   # R[0] = 00110100 --> 01110100 = 74
movr $2, $0 # R[2] = R[0] = 65 = 41 (hex) --> 01101000 = 68
jr $2       # PC = R[2] = 41 --> 00100010 = 22

######## JI ########
ji 0111 # PC = PC + Imm = PC + 7 --> 00110111 = 37