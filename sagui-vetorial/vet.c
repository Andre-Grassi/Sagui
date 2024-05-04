#include <stdio.h>

#define TAM 10

int main () {
    // Declaração dos vetores
    int vet_a[TAM];
    int vet_b[TAM];
    int vet_r[TAM];

    // Declaração das variáveis de controle
    int i;
    int j;

    // Loop que inicializa os vetores
    i = 0;
    j = 0;
    while (i < TAM) {
        vet_r[i] = 0;

        vet_a[i] = j;

        j = j + 1;

        vet_b[i] = j;

        j = j + 1;
        i = i + 1;
    }

    // Loop que realiza a operação de soma
    i = 0;
    while (i < TAM) {
        vet_r[i] = vet_a[i] + vet_b[i];
        i = i + 1;
    }

    // Loop que imprime o vetor resultante
    i = 0;
    while (i < TAM) {
        printf ("%d\n", vet_r[i]);
        i = i + 1;
    }
}