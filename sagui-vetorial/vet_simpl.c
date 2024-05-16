#include <stdio.h>

int main () {
    // Declaração dos vetores
    int vet_a[10];
    int vet_b[10];
    int vet_r[10];

    // Declaração das variáveis de controle
    int i;
    int j;

    // Loops que inicializam os vetores
    i = 0;
    j = 0;

inicializa_a:
    if (i < 10) {
        vet_a[i] = j;

        j = j + 2;
        i = i + 1;

        goto inicializa_a;
    }

    i = 0;
    j = 1;

inicializa_b:
    if (i < 10) {
        vet_b[i] = j;

        j = j + 2;
        i = i + 1;

        goto inicializa_b;
    }

    i = 0;

inicializa_r:
    if (i < 10) {
        vet_r[i] = 0;

        i = i + 1;

        goto inicializa_r;
    }

    // Loop que realiza a operação de soma
    i = 0;

soma:
    if (i < 10) {
        vet_r[i] = vet_a[i] + vet_b[i];
        i = i + 1;

        goto soma;
    }

    // Loop que imprime o vetor resultante
    i = 0;
    while (i < 10) {
        printf ("%d\n", vet_r[i]);
        i = i + 1;
    }
}