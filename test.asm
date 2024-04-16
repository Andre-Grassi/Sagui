# Inicializa registrador 0 com o valor XXXXXXX não sei qual é o resultado
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movh 7      # R[0] = {Imm + R[0](3:0)} = {0111 + 0000} = 01110000 = 112 --> 01110111 = 77
sub $0, $0  # R[0] = R[0] - R[0] # Reseta o registrador 0 --> 10100000 = A0
movl 7      # R[0] = {R[0](7:4) + Imm.} = {0000 + 0111} = 00000111 = 7 --> 10000111 = 87

# num riscv real pode ter espaços em branco tipo o acima?

# Inicializar registrador 1 --> fazer um movr do valor do 0
movr $1, $0 # R[1] = R[0]

# Testes da ULA e guardar tudo no 1
add $1, $1  # R[1] = R[1] + R[1] # Add com um positivo e outro positivo
                                 # Add com um positivo e outro negativo
                                 # Add com um negativo e outro negativo

sub $1, $1  # R[1] = R[1] - R[1] # Sub com um positivo e outro positivo
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