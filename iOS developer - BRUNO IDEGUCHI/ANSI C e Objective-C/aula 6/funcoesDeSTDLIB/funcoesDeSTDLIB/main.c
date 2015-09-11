//
//  main.c
//  funcoesDeSTDLIB
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

#include <stdlib.h>

#include <time.h>

int main(int argc, const char * argv[])
{

    
    
    // Função rand(); - Retorna um número inteiro pseudorandomico entre 0 e um limite máximo que podemos controlar pelo operador MOD(%) ou pelo padrão que é 2.147.483.647.
    // Por padrão sorteia o primeiro número igual
    
    int numero = rand();
    int numero2 = rand()%10;
    
    printf("O número sorteado é: %d\n", numero);
    printf("O número sorteado é: %d\n", numero2);
    
    for (int i = 1; i<=10; i++) {
        printf("O número sorteado é: %d\n", numero);
        printf("O número sorteado é: %d\n", numero2);
    }
    
    
    
    
    
    //Função Srand(); - A função srad(); permite a entrada de um parâmetro "semente" e a partir dele os sorteios serão gerados. Podemos inserir um número inteiro e ele será por padrão, ou passar um parâmetro da biblioteca time.h que usa um valor que muda a cada segundo gerando sorteios aleatórios entre si.
    
    srand (time(NULL));
    
    int numero3 = rand();
    int numero4 = rand()%10;
    
    printf("O número sorteado é: %d\n", numero3);
    printf("O número sorteado é: %d\n", numero4);
    
    
    
    
    //Função Arc4Random() - Sorteia aleatoriamente sem precisar de parametro

    printf("Sorteio de arc4random: %i", arc4random()%10);
    
    
    
    return 0;
}

