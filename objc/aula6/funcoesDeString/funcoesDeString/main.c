//
//  main.c
//  funcoesDeString
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>



//Para utilizar funções da biblioteca string.h, devemos incluí-la:
#include <string.h>



int main(int argc, const char * argv[])
{

    // strcmp(); - Função que compara duas strings considerando o Case Sensitive, ou seja, diferenciando maiúsculas de minúsculas.
    // A função retorna um inteiro para a comparação - caso o resultado seja 0 as strings são iguais.
    
    char palavra1 [256] = "IMPACTA";
    char palavra2 [256] = "Impacta";
    
    if (strcmp(palavra1, palavra2) == 0) {
        puts("Usando a função strcmp, verificamos que as palavras são iguais.\n");
    }
    
    else{
        puts("Usando a função strcmp, verificamos que as palavras são diferentes.\n");
    }
    
    
    
    
    //strcasecmp(); - É a função que compara strings sem considerar o case sensitive.
    
    
    if (strcasecmp(palavra1, palavra2) == 0) {
        puts("Usando a função strcasecmp, verificamos que as palavras são iguais.\n");
    }
    
    else{
        puts("Usando a função strcasecmp, verificamos que as palavras são diferentes.\n");
    }
    
    
    
    
    //strlen(); - É a função que retorna um Long unsigned int (lu);
    
    char nome[256] = "IMPACTA";
    
    printf("O nome tem %lu caracteres", strlen(nome));
    
    
    
    
    
    //strcat(); - Retorna uma string a partir da concatenação de outras duas
    
    char nome1 [256] = "Bruno";
    char nome2 [256] = "Ideguchi";
    
    printf("\nA concatenação com a função strcat gerou: %s\n\n", strcat(nome1,nome2));
    
    
    
    
    //strcpy(); - Atribui o conteudo de uma string para outra
    
    char antigoTexto[256] = "Texto Antigo";
    char novoTexto[256];
    
    strcpy(novoTexto, antigoTexto);
    
    printf("Conteúdo do novo texto: %s", novoTexto);
    
    
    return 0;
}

