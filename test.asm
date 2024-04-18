# Inicializa registrador 0 com o valor XXXXXXX não sei qual é o resultado
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movh 7      # R[0] = {Imm + R[0](3:0)} = {0111 + 0000} = 01110000 = 112 --> 01110111 = 77
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movl 7      # R[0] = {R[0](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10000111 = 87

# num riscv real pode ter espaços em branco tipo o acima?

# Inicializar registrador 1 --> fazer um movr do valor do 0
movr $1, $0 # R[1] = R[0] = 7 --> 01100100 = 64

######## ADD ########

# Soma de positivo com positivo
add $1, $1  # R[1] = R[1] + R[1] = 7 + 7 = 14 --> 10010101 = 95
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movh 7      # R[0] = {Imm + R[0](3:0)} = {1111 + 0000} = 11110000 = -16 --> 01111111 = 7F

# Soma de positivo com negativo
add $1, $0 # R[1] = R[1] + R[0] = 14 + (-16) = -2 --> 10010100 = 94

# Soma de negativo com negativo
add $1, $1 # R[1] = R[1] + R[1] = -2 + (-2) = -4 --> 10010101 = 95


######## SUB ########

# Subtração de negativo com negativo
sub $1, $1  # R[1] = R[1] - R[1] = -4 - (-4) = 0 --> 10100101 = A5
                                 # Sub com um positivo e outro negativo
                                 # Sub com um negativo e outro negativo
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