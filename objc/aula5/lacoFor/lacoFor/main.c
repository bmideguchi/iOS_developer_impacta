//
//  main.c
//  lacoFor
//
//  Created by NoiteA on 15/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>






int main(int argc, const char * argv[])
{

    
    /*
     Estruturas de repetição
     
     FOR - É uma estrutura de repetição normalmente usada para um loop controlado por determinado número de vezes
     
     Declaração:
     
     for(inicialização da variável de controle; condição de repetição; incremento){
     Bloco de código
     }
     
     */
    
    
    
    
    //Criação de um FOR com inicialização e declaração na estrutura
    for (int i=1; i<=10; i++) {
        puts("Bruno");
    }
    
    
    
    //Criação de um FOR com variavel fora do laço
    int i;
    for (i=1; i<=10; i++) {
        printf("O laço que está sendo executado é o de número: %i\n", i);
    }
    
    
    
    
}

