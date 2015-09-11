//
//  main.c
//  lacoWhile
//
//  Created by NoiteA on 15/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    /*
    
     Laço WHILE
     
     Normalmente utilizado para uma repetição "enquanto condição". Mas nada impede de ser usado para uma repetição controlada.
     
     Declaração:
     while(condição){
     Bloco que é executado enquanto a condição for verdadeira.
     }
     
    */

    
    int opcao = 1;
    
    while (opcao==1) {
        printf("Laço while\n\n");
        
        printf("Insira a opção:");
        scanf("%i",&opcao);
    }
    
    puts("Mano, saiu do laço!");
    
return 0;
}