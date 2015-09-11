//
//  main.c
//  aula6Desafio1
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int numero1;
int numero2;

int main(int argc, const char * argv[])
{

    printf("Por favor, insira um número:");
    scanf("%i,", &numero1);
    
    printf("Por favor, insira mais um número:");
    scanf("%i", &numero2);
    
    
    //Caso os numeros sejam iguais
    if (numero1==numero2) {
        printf("\nTabuada do %i:\n", numero1);
        for (int i = 1; i<=10; i++) {
            
            printf("%i X %i = %i\n", i, numero1, i*numero1);
            
        }
        puts("\n\n");
    }

    //Caso o numero 1 seja maior que o 2
    if (numero1>numero2){
        
        while (numero1>=numero2){
            printf("\nTabuada do %i:\n", numero2);
            for (int i = 1; i<=10; i++) {
                
                printf("%i X %i = %i\n", i, numero2, i*numero2);
                
            }
            puts("\n\n");
            numero2++;
             
        }
    }
    
    
    
    //Caso o numero 2 seja maior que o numero 1
    if (numero1<(numero2-1)){
        
        while (numero1<=numero2){
            printf("\nTabuada do %i:\n", numero1);
            for (int i = 1; i<=10; i++) {
                
                printf("%i X %i = %i\n", i, numero1, i*numero1);
                
            }
            puts("\n\n");
            numero1++;
            
        }
    }
    

    
    return 0;
}


