#include <stdio.h>

#define TAM 10

int main () {
    // Vetores teste de 10 posições
    int vet_1[TAM] = {0, -45, 25, 62, 2, 46, 73, 32, 11, 1};
    int vet_2[TAM] = {-5, 23, 65, 21, -24, -33, -1, 24, 63, 10};
    int vet_r[TAM];

    // Contador
    int cont = TAM - 1;
    int cont_ant = cont;

SOMA:
    if (cont_ant == 0)
        goto FIM;

    // Soma posição i dos vetores e guarda em vet_r
    *(vet_r + cont) = *(vet_1 + cont) + *(vet_2 + cont);

    cont_ant = cont;
    cont = cont - 1;

    goto SOMA;

FIM:
    return 0;
}