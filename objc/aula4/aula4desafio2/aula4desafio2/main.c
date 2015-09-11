//
//  main.c
//  aula4desafio2
//
//  Created by NoiteA on 13/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

float nota1;
float nota2;
float nota3;

int main(int argc, const char * argv[])
{

    //Input de dados do usuário:
    
    printf("Insira a primeira nota:");
    scanf("%f", &nota1);
    
    printf("Insira a segunda nota:");
    scanf("%f", &nota2);
    
    printf("Insira a terceira nota:");
    scanf("%f", &nota3);
    
    
    
    
    //Cálculo da média e declaração de sua variável:
    
    float media = (nota1+nota2+nota3)/3;
    
    
    
    
    //Condições de aprovação:
    
    if (media>5) {
        printf("\nAluno Aprovado");
    }
    
    if (media<5) {
        printf("\nAluno Reprovado");
    }
    
    if (media==5) {
        printf("\nPassou raspando");
    }
    
    return 0;
}

