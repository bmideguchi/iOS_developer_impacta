//
//  main.c
//  aula6Desafio1-PROFESSOR
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int num1, num2;
    
    puts("insira o primeiro numero");
    scanf("%i", &num1);
    
    puts("insira o segundo numero");
    scanf("%i", &num2);
    
    for (int j = num1; j <= num2; j++) {
        
        printf("Tabuada do %i\n", j);
        for (int i = 1; i <= 10; i++){
            printf("%i X %i = %i\n", j, i, j*i);
        }
            
    }
    
    
    return 0;
}

