# Reseta todos os registradores
movl 0 # 10000000 = 80
movh 0 # 01110000 = 70
movr $1, $0 # 01100100 =  64
movr $2, $0 # 01101000 = 68
movr $3, $0 # 01101100 = 6C

# R[0] guarda o tamanho dos vetores
movl 1010 # 10001010 = 8A
movr $1, $0 # 01100100 = 64

# Endereço 0 da memória guarda o tamanho
movl 0 # 10000000 = 80
st $1, $0 # M[0] = 10 --> # 01010100 = 54

# R[1] recebe o endereço do vetor 1
movl 1 # 10000001 = 81
movr $1, $0 # 01100100 = 64

# R[2] recebe o endereço do vetor 2
# Endereço do vetor 2 = Endereço do vetor 1 + 10
movl 1010 # 10001010 = 8A
movr $2, $0 # 01101000 = 68
add $2, $1 # 10011001 = 99

# Inicializa vetor 1 na memória
# R[3] recebe 1 para incremento do endereço
movl 1 # 10000001 = 81
movr $3, $0 # 01101100 = 6C

# vet_1[0] = 0
movl 0 # 10000000 = 80
st $0, $1 # 01010001 = 51

# vet_1[1] = -45
add $1, $3 # R[1] = 1 + 1 = 2 --> 10010111 = 97
movl 0011 # 10000011 = 83
movh 1101 # 01111101 = 7D
st $0, $1 # 01010001 = 51

# vet_1[2] = 25
add $1, $3 # R[1] = 2 + 1 = 3 --> 10010111 = 97
movl 1001 # 10001001 = 89
movh 0001 # 01110001 = 71
st $0, $1 # 01010001 = 51

# vet_1[3] = 62
add $1, $3 # R[1] = 3 + 1 = 4 --> 10010111 = 97
movl 1110 # 10001110 = 8E
movh 0011 # 01110011 = 73
st $0, $1 # 01010001 = 51

# vet_1[4] = 2
add $1, $3 # R[1] = 4 + 1 = 5 --> 10010111 = 97
movl 0010 # 10000010 = 82
movh 0000 # 01110000 = 70
st $0, $1 # 01010001 = 51

# vet_1[5] = 46
add $1, $3 # R[1] = 5 + 1 = 6 --> 10010111 = 97
movl 1110 # 10001110 = 8E
movh 0010 # 01110010 = 72
st $0, $1 # 01010001 = 51

# vet_1[6] = 73
add $1, $3 # R[1] = 6 + 1 = 7 --> 10010111 = 97
movl 1001 # 10001001 = 89
movh 0100 # 01110100 = 74
st $0, $1 # 01010001 = 51

# vet_1[7] = 32
add $1, $3 # R[1] = 7 + 1 = 8 --> 10010111 = 97
movl 0000 # 10000000 = 80
movh 0010 # 01110010 = 72
st $0, $1 # 01010001 = 51

# vet_1[8] = 11
add $1, $3 # R[1] = 8 + 1 = 9 --> 10010111 = 97
movl 1011 # 10001011 = 8B
movh 0000 # 01110000 = 70
st $0, $1 # 01010001 = 51

# vet_1[9] = 1 
add $1, $3 # R[1] = 9 + 1 = 10 --> 10010111 = 97
movl 0001 # 10000001 = 81
movh 0000 # 01110000 = 70
st $0, $1 # 01010001 = 51

# Inicializa vetor 2 na memória
# vet_2[0] = -5
movl 1011 # 10001011 = 8B
movh 1111 # 01111111 = 7F
st $0, $2 # 01010010 = 52

# vet_2[1] = 23
add $2, $3 # R[2] = 11 + 1 = 12 --> 10011011 = 9B
movl 0111 # 10000111 = 87
movh 0001 # 01110001 = 71
st $0, $2 # 01010010 = 52

# vet_2[2] = 65
add $2, $3 # R[2] = 12 + 1 = 13 --> 10011011 = 9B
movl 0001 # 10000001 = 81
movh 0100 # 01110100 = 74
st $0, $2 # 01010010 = 52

# vet_2[3] = 21
add $2, $3 # R[2] = 13 + 1 = 14 --> 10011011 = 9B
movl 0101 # 10000101 = 85
movh 0001 # 01110001 = 71
st $0, $2 # 01010010 = 52

# vet_2[4] = -24
add $2, $3 # R[2] = 14 + 1 = 15 --> 10011011 = 9B
movl 1000 # 10001000 = 88
movh 1110 # 01110001 = 7E
st $0, $2 # 01010010 = 52

# vet_2[5] = -33
add $2, $3 # R[2] = 15 + 1 = 16 --> 10011011 = 9B
movl 1111 # 10001111 = 8F
movh 1101 # 01111101 = 7D
st $0, $2 # 01010010 = 52

# vet_2[6] = -1
add $2, $3 # R[2] = 16 + 1 = 17 --> 10011011 = 9B
movl 1111 # 10001111 = 8F
movh 1111 # 01111111 = 7F
st $0, $2 # 01010010 = 52

# vet_2[7] = 24
add $2, $3 # R[2] = 17 + 1 = 18 --> 10011011 = 9B
movl 1000 # 10001000 = 88
movh 0001 # 01110001 = 71
st $0, $2 # 01010010 = 52

# vet_2[8] = 63 
add $2, $3 # R[2] = 18 + 1 = 19 --> 10011011 = 9B
movl 1111 # 10001111 = 8F
movh 0011 # 01110011 = 73
st $0, $2 # 01010010 = 52

# vet_2[9] = 10
add $2, $3 # R[2] = 19 + 1 = 20 --> 10011011 = 9B
movl 1010 # 10001010 = 8A
movh 0000 # 01110000 = 70
st $0, $2 # 01010010 = 52

# Soma dos vetores
# R[1] recebe o endereço do vetor 1
movl 1 # 10000001 = 81
movr $1, $0 # 01100100 = 64

# Guarda o endereço do vetor 1 na posição 18 (hex) da RAM
movl 1000 # 10001000 = 88
movh 0001 # 01110001 = 71
st $1, $0 # 01010100 = 54

# R[2] recebe o endereço do vetor 2
# Endereço do vetor 2 = Endereço do vetor 1 + 10
movl 1010 # 10001010 = 8A
movh 0000 # 01110000 = 70
movr $2, $0 # 01101000 = 68
add $2, $1 # 10011001 = 99

# Guarda o endereço do vetor 2 na posição 19 (hex) da RAM
movl 1001 # 10001001 = 89
movh 0001 # 01110001 = 71
st $2, $0 # 01011000 = 58

# Guarda o endereço do vetor resultado na posição 1a da RAM
# Endereço vai começar no 20
# R[3] recebe o endereco do vetor resultado
movl 0000 # 10000000 = 80
movh 0010 # 01110010 = 72
movr $3, $0 # R[3] = 20 --> 01101100 = 6C
movl 1010 # 10001010 = 8A
movh 0001 # 01110001 = 71
st $3, $0 # M[1A] = 20 --> 01011100 = 5C

# Guarda contador na posição 1b da RAM
movl 1001 # 10001001 = 89 Cont vale 9 
movh 0000 # 01110000 = 70
movr $3, $0 # R[3] = 10 --> 01101100 = 6C
movl 1011 # 10001011 = 8B
movh 0001 # 01110001 = 71
st $3, $0 # M[1B] = 10 --> 01011100 = 5C
--- até aqui na rom
# R[0] indica se a soma acabou, 0 = acabou, diferente de 0 = não acabou
brzi imm
# Talvez gambiarra aqui pro salto grande
# Pega o endereço do vetor 1
movl 1000 # 10001000 = 88
movh 0001 # 01110001 = 71
ld $1, $0 # 01000100 = 44

# Pega o endereço do vetor 2
movl 1001 # 10001001 = 89
movh 0001 # 01110001 = 71
ld $2, $0 # 01001000 = 48

# Pega o endereço do vetor resultado
movl 1010 # 10001010 = 8A
movh 0001 # 01110001 = 71
ld $3, $0 # 01001100 = 4C

# Pega o contador
movl 1011 # 10001011 = 8B
movh 0001 # 01110001 = 71
ld $0, $0 # 01000000 = 40

# Obtém o índice correto dos vetores
add $1, $0 # 10010100 = 94
add $2, $0 # 10011000 = 98
add $3, $0 # 10011100 = 9C

# Pega vetor 1
ld $1, $1 # 01000101 = 45

# Pegar vetor 2
ld $2, $2 # 01001010 = 4A

# Soma os vetores
add $1, $2 # 10010110 = 96

# Guarda no endereço indicado por $3 o resultado
st $1, $3 # 01010111 = 57

# Pega o contador
movl 1011 # 10001011 = 8B
movh 0001 # 01110001 = 71
ld $1, $0 # 01000100 = 44

# Decrementa o contador
movl 0001 # 10000001 = 81
movh 0000 # 01110000 = 70
sub $1, $0 # 10100100 = A4

# Pega o contador (antigo)
movl 1011 # 10001011 = 8B
movh 0001 # 01110001 = 71
ld $2, $0 # 01001000 = 48

# Armazena novo valor do contador
movl 1011 # 10001011 = 8B
movh 0001 # 01110001 = 71
st $1, $0 # 01010100 = 54

# Guarda o valor antigo do contador em R[1]
movr $1, $2 # 01100110 = 66

# Guarda salto em R[2]
movl 1000 # 10001000 = 88
movh 1011 # 01111011 = 7B
movr $2, $0 # 01101000 = 68

movr $0, $1 # 01100001 = 61

# Volta à condição do laço
jr $2 # 00100010 = 22

# Todas as operações estão dando certo menos a última iteração aparentemente