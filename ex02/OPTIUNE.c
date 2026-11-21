/*
 * Problema 2 - programul OPTIUNE
 * Creati un program "OPTIUNE" care returneaza una din valorile: 0, 1, 2, 3.
 * Compilare: gcc OPTIUNE.c -o OPTIUNE
 */

#include <stdio.h>

int main(void)
{
    int opt = 0;

    printf("1. Optiunea 1\n");
    printf("2. Optiunea 2\n");
    printf("3. Optiunea 3\n");
    printf("0. Iesire\n");
    printf("Alegeti o optiune (0-3): ");

    if (scanf("%d", &opt) != 1 || opt < 0 || opt > 3)
    {
        return 0;
    }

    return opt;

    return 0;
}
