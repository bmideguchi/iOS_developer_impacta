//
//  main.c
//  aula5Desafio1
//
//  Created by NoiteA on 15/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    
    
    //Usando FOR
    int variavelEscolhida;
    
    printf("Digite um número para que o sistema calcule sua tabuada:");
    scanf("%i", &variavelEscolhida);
    
    puts("\n\nUsando FOR:");
    
    for (int i=1; i<=10; i++) {
        printf("%i X %i = %i\n", i, variavelEscolhida, i*variavelEscolhida);
    }
    
    
    puts("\n\nUsando WHILE:");
    
    //Usando WHILE
    int i = 1;
    
    while (i<=10) {
        printf("%i X %i = %i\n", i, variavelEscolhida, i*variavelEscolhida);
        i++;
    }
    
    
    
    return 0;
}


