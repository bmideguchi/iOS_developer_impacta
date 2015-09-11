//
//  main.c
//  aula5Desafio2
//
//  Created by NoiteA on 15/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int valorDoUsuario;
    
    printf("Insira um número:");
    scanf("%i", &valorDoUsuario);
    
    int i=1;
    int total=0;
    
    while (i<=valorDoUsuario) {

        total = total+i;
        printf("%i\n", total);
        //NUNCA esquecer de fazer o incremento dentro do laço while
        i++;
        
    }
    
    printf("O total é:%i", total);
    
    return 0;
}

//valorDoUsuario+(valorDoUsuario-1)