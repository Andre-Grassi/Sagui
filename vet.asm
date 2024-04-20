# Reseta todos os registradores
movl 0 # 10000000
movh 0 # 01110000
movr $1, $0 # 01100000 
movr $2, $0 # 01100000
movr $3, $0 # 01100000

# R[0] guarda o tamanho dos vetores
movl 1010 # 10001010
movr $1, $0 # 01100100

# Endereço 0 da memória guarda o tamanho
movl 0 # 10000000
st $1, $0 # M[0] = 10 --> # 01010100

# R[1] recebe o endereço do vetor 1
movl 1 # 10000001
movr $1, $0 # 01100100

# R[2] recebe o endereço do vetor 2
# Endereço do vetor 2 = Endereço do vetor 1 + 10
movl 1010 # 10001010
movr $2, $0 # 01101000
add $2, $1 # 10011001

# Inicializa vetor 1 na memória
# R[3] recebe 1 para incremento do endereço
movl 1 # 10000001
movr $3, $0 # 01101100

# vet_1[0] = 0
movl 0 # 10000000
st $0, $1 # 01010001

# vet_1[1] = -45
add $1, $3 # R[1] = 1 + 1 = 2 --> 10010111
movl 0011 # 10000011
movh 1101 # 01111101
st $0, $1 # 01010001

# vet_1[2] = 25
add $1, $3 # R[1] = 2 + 1 = 3 --> 10010111
movl 1001 # 10001001
movh 0001 # 01110001
st $0, $1 # 01010001

# vet_1[3] = 62
add $1, $3 # R[1] = 3 + 1 = 4 --> 10010111
movl 1110 # 10001110
movh 0011 # 01110011
st $0, $1 # 01010001

# vet_1[4] = 2
add $1, $3 # R[1] = 4 + 1 = 5 --> 10010111
movl 0010 # 10000010
movh 0000 # 01110000
st $0, $1 # 01010001

# vet_1[5] = 46
add $1, $3 # R[1] = 5 + 1 = 6 --> 10010111
movl 1110 # 10001110
movh 0010 # 01110010
st $0, $1 # 01010001

# vet_1[6] = 73
add $1, $3 # R[1] = 6 + 1 = 7 --> 10010111
movl XXXX # 1000
movh XXXX # 0111
st $0, $1 # 01010001

# vet_1[7] = 32
add $1, $3 # R[1] = 7 + 1 = 8 --> 10010111
movl XXXX # 1000
movh XXXX # 0111
st $0, $1 # 01010001

# vet_1[8] = 11
add $1, $3 # R[1] = 8 + 1 = 9 --> 10010111
movl XXXX # 1000
movh XXXX # 0111
st $0, $1 # 01010001

# vet_1[9] = 0
add $1, $3 # R[1] = 9 + 1 = 10 --> 10010111
movl XXXX # 1000
movh XXXX # 0111
st $0, $1 # 01010001

# Inicializa vetor 2 na memória
# vet_2[0] = -5
movl 1110 # 10001110
movh 1111 # 01111111
st $0, $2 # 01010010

# vet_2[1] = 23
add $2, $3 # R[3] = 11 + 1 = 12 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[2] = 65
add $2, $3 # R[3] = 12 + 1 = 13 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[3] = 21
add $2, $3 # R[3] = 13 + 1 = 14 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[4] = -24
add $2, $3 # R[3] = 14 + 1 = 15 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[5] = -33
add $2, $3 # R[3] = 15 + 1 = 16 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[6] = -1
add $2, $3 # R[3] = 16 + 1 = 17 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[7] = 24
add $2, $3 # R[3] = 17 + 1 = 18 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[8] = 63 
add $2, $3 # R[3] = 18 + 1 = 19 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

# vet_2[9] = 10
add $2, $3 # R[3] = 19 + 1 = 20 --> 10011011
movl XXXX # 1000
movh XXXX # 0111
st $0, $2 # 01010010

