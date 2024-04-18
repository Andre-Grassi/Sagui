## mnemonico reg # operação --> # instrução em binário = instr. em hex.

# Inicializa registrador 0 com o valor XXXXXXX não sei qual é o resultado
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movh 7      # R[0] = {Imm + R[0](3:0)} = {0111 + 0000} = 01110000 = 112 --> 01110111 = 77
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movl 7      # R[0] = {R[0](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10000111 = 87

# num riscv real pode ter espaços em branco tipo o acima?

# Inicializar registrador 1 --> fazer um movr do valor do 0
movr $1, $0 # R[1] = R[0] = 7 --> 01100100 = 64
movr $2, $1 # R[2] = R[1] = 7 --> 01101001 = 69
movr $3, $2 # R[3] = R[2] = 7 --> 01101110 = 6E


######## ADD ########

# Soma de positivo com positivo
add $2, $1  # R[2] = R[2] + R[1] = 7 + 7 = 14 --> 10011001 = 99
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movh 7      # R[0] = {Imm + R[0](3:0)} = {1111 + 0000} = 11110000 = -16 --> 01111111 = 7F

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
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movl 1      # R[0] = {R[0](7:4) + Imm.} = {0000 + 0001} = 00000001 = 1 --> 10000001 = 81
movr $1, $0 # R[1] = R[0] = 1 --> 01100100 = 64

# Multiplica R[1] por 2
slr $1, $0 # R[1] = R[1] << R[0] = 1 << 1 = 2 --> 11100100 = e4

# Divide R[1] por 2
srr $1, $0 # R[1] = R[1] >> R[0] = 2 >> 1 = 1 --> 11110100 = f4

# R[0] = 7 = 00000111
movl 7 # R[0] = {R[0](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10000111 = 87

# Máximo de slr possível, causando overflow
slr $1, $0 # R[1] = R[1] << R[0] = 1 << 7 = -128 --> 11100100 = E4

# Máximo de srr possível, causando underflow
srr $1, $0 # R[1] = R[1] << R[0] = 1 << 7 = 1 --> 11110100 = F4


######## STORE ########
st $0, $1 # M[R[1]] = R[0] <=> M[1] = 7 --> 01010001 = 51


######## LOAD ########
ld $2, $1 # R[2] = M[R[1]] <=> R[2] = M[1] --> 01001001 = 49

################Até aqui tudo certo #############################


######## BRZR ########
# Não entra no branch
brzr $1, $0 # if (R[1] == 0) PC = R[0] = 7 --> 00000100 = 4

# Entra no branch
movl 8      # 10001000 = 88
movh 2      # 01110010 = 72
# R[0] = 28
sub $1, $1  # 10100101 = A5
brzr $1, $0 # if (R[1] == 0) PC = R[0] = 28 --> 00000100 = 4


######## BRZI ########
# Não entra no branch
brzi 7 # if (R[0] == 0) PC = PC + Imm = PC + 7 --> 00010111 = 17

# Entra no branch
sub $0, $0 # R[0] = 0 --> 10100000 = A0
brzi 7 # if (R[0] == 0) PC = PC + Imm = PC + 7 --> 00010111 = 17


######## JR ########
movl 12     # R[0] = 00001100 --> 10001100 = 8C
movh 3      # R[0] = 00111100 --> 01110011 = 73
movr $2, $0 # R[2] = R[0] --> 01101000 = 68
jr $2       # PC = R[2] = 3C --> 00100010 = 22

######## JI ########
ji 7 # PC = PC + Imm = PC + 7 --> 00110111 = 37