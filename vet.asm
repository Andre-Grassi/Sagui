# Reseta todos os registradores
movl 0 # 1000
movh 0 # 0111
movr $1, $0 # 0110
movr $2, $0 # 0110
movr $3, $0 # 0110

# R[0] guarda o tamanho dos vetores
movl 10 # 1000
movr $1, $0 # 0110

# Endereço 0 da memória guarda o tamanho
movl 0 # 1000
st $1, $0 # M[0] = 10

# R[1] recebe o endereço do vetor 1
movl 1 # 1000
movr $1, $0 # 0110

# R[2] recebe o endereço do vetor 2
# Endereço do vetor 2 = Endereço do vetor 1 + 10
movl 1010 # 1000
movr $2, $0 # 0110
add $2, $1

# Inicializa vetor 1 na memória
# R[3] recebe 1 para incremento do endereço
movl 1 # 1000
movr $3, $0 # 0110

# vet_1[0] = 0
movl 0 # 1000
st $0, $1

# vet_1[1] = -45
add $1, $3 # R[1] = 1 + 1 = 2
movl 0011 # 1000
movh 1101 # 0111
st $0, $1

# vet_1[2] = 25
add $1, $3 # R[1] = 2 + 1 = 3
movl 1001 # 1000
movh 0001 # 0111
st $0, $1

# vet_1[3] = 62
add $1, $3 # R[1] = 3 + 1 = 4
movl 1110 # 1000
movh 0011 # 0111
st $0, $1

# vet_1[4] = 2
add $1, $3 # R[1] = 4 + 1 = 5
movl 0010 # 1000
movh 0000 # 0111
st $0, $1

# vet_1[5] = 46
add $1, $3 # R[1] = 5 + 1 = 6
movl 1110 # 1000
movh 0010 # 0111
st $0, $1

# vet_1[6] = 73
add $1, $3 # R[1] = 6 + 1 = 7
movl XXXX # 1000
movh XXXX # 0111
st $0, $1

# vet_1[7] = 32
add $1, $3 # R[1] = 7 + 1 = 8
movl XXXX # 1000
movh XXXX # 0111
st $0, $1

# vet_1[8] = 11
add $1, $3 # R[1] = 8 + 1 = 9
movl XXXX # 1000
movh XXXX # 0111
st $0, $1

# vet_1[9] = 0
add $1, $3 # R[1] = 9 + 1 = 10
movl XXXX # 1000
movh XXXX # 0111
st $0, $1

# Inicializa vetor 2 na memória
# vet_2[0] = -5
movl 1110 # 1000
movh 1111 # 0111
st $0, $2

# vet_2[1] = 23
add $2, $3 # R[3] = 11 + 1 = 12
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[2] = 65
add $2, $3 # R[3] = 12 + 1 = 13
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[3] = 21
add $2, $3 # R[3] = 13 + 1 = 14
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[4] = -24
add $2, $3 # R[3] = 14 + 1 = 15
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[5] = -33
add $2, $3 # R[3] = 15 + 1 = 16
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[6] = -1
add $2, $3 # R[3] = 16 + 1 = 17
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[7] = 24
add $2, $3 # R[3] = 17 + 1 = 18
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[8] = 63 
add $2, $3 # R[3] = 18 + 1 = 19
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

# vet_2[9] = 10
add $2, $3 # R[3] = 19 + 1 = 20
movl XXXX # 1000
movh XXXX # 0111
st $0, $2

