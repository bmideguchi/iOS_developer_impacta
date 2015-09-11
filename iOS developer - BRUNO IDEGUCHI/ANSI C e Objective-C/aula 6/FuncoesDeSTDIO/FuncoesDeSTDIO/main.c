//
//  main.c
//  FuncoesDeSTDIO
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

/* Funções são blocos de código que executam determinada tarefa especificada e podem ser executados quantas vezes o programador achar necessário.
 
 A inclusão de bibliotecas nos permite ter acesso a suas funções
 
 */


// Funções da biblioteca STDIO.h

// printf();
// puts();
// scanf();
// gets();

// Função getchar(); - retorna um inteiro a partir de um caractere resgatado (TABELA ASCII)

//Função sprintf(); é responsável por concatenar strings podendo utilizar variáveis

//


int main(int argc, const char * argv[])
{

    int caractere;
    
    printf("Insira um caractere: ");
    caractere = getchar();
    
    printf("Caractere digitado: %c, que tem o seguinte código na tabela ASCII: %i\n", caractere, caractere);
    
    char texto1[256] = "IMPACTA";
    char texto2[256] = "TECNOLOGIA";
    char tudoJunto[256];
    
    sprintf(tudoJunto, "\nEstamos no treinamento de iOS na %s %s",texto1, texto2 );
    
    
    printf("%s", tudoJunto);
    
    return 0;
}

