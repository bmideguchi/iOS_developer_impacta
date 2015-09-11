//
//  main.c
//  switchCase
//
//  Created by NoiteA on 13/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    /*
     
     Switch - O switch trabalha como o if, ou seja, é uma estrutura de decisão.
     
     No caso do switch, ele trabalha com uma análise caso a caso.
     
     Tem a seguinte declaração:
     
     switch(variável que será analisada){
     
        case valor:
            código a ser executado
            break;
        
        case valor:
            código a ser executado
            break;
     
        Default:
            código a ser executado
            break;
     }
     
     */
    
    int decisao = 1;
    
    switch (decisao) {
            
        case 0:
            printf("Você escolheu a opção 0");
            break;
            
        case 1:
            printf("Você escolheu a opção 1");
            break;
            
        case 2:
            printf("Você escolheu a opção 2");
            break;
            
        default:
            puts("Você escolheu uma opção inválida.");
            break;
    }
    
    
    return 0;
}

