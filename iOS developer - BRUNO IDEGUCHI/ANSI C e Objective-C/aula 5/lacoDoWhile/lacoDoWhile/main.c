//
//  main.c
//  lacoDoWhile
//
//  Created by NoiteA on 15/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    
    int opc = 1;
    
    do{
        puts("Laço DO WHILE!!!\n");
        puts("Insira uma opção");
        scanf("%i", &opc);
    }

    
    while ( opc == 1 );
        puts("Brother, saiu do laço!");
    
    
    return 0;
}

