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
and 
or
not
slr
srr

# Store
# Load
# brzr dando certo
# brzr dando errado
# brzi dando certo
# brzi dando errado
# jr
# ji