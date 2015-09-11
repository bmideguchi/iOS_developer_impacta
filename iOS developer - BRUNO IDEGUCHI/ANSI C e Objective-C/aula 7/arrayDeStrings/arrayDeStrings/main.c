//
//  main.c
//  arrayDeStrings
//
//  Created by NoiteA on 20/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    /*
     
    Podemos criar um array de caracteres, ou seja, um array de strings. Para cria-lo, devemos seguir as informações abaixo:
     
     char nome_array[qtd_elementos][qtdd_caracteres] = {"string1", "string2"}
     
    */
    
    char nomes[3][256] = {"Garibaldo","Filisbina","Florentina"};
    
    printf("Resgatando o primeiro elemento do Array: %s\n", nomes[0]);
    printf("Resgatando o segundo elemento do Array: %s\n", nomes[1]);
    printf("Resgatando o terceiro elemento do Array: %s\n", nomes[2]);

    
    
    
    //Achar um caractere dentro de um array
    printf("O terceiro caractere do terceiro string do array é: %c\n", (nomes[2])[2]);
    
    
    return 0;
}

