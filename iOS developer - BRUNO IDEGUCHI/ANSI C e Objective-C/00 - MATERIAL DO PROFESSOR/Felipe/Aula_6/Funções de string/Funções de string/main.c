
#include <stdio.h>
// Para utililizar funções da biblioteca string.h temos que incluí-la.

#include <string.h>

int main(int argc, const char * argv[])
{

    
    // strcmp() - Função que compara duas strings considerando o CaSe sENsiTIve, ou seja, diferenciando maiúsculas de minúsculas.
    
    // A função retorna um inteiro para a comparação - caso o resultado seja 0 as strings são iguais.
    
    
    
    char palavra1 [256] = "impacta";
    char palavra2 [256] = "Impacta";
    
    if (  strcmp(palavra1, palavra2) == 0 ) {
        
        
        puts("Usando a função strcmp as palavras são iguais\n");
    }else{
    
        puts("Usando a função strcmp as palavras são diferentes\n ");
    
    }
    
    
    // strcasecmp() - A Função que compara strings sem considerar o CasE SEnsiTivE.
    
    
    if (  strcasecmp(palavra1, palavra2) == 0 ) {
     
        puts("Usando a função strcasecmp as palavras são iguais");
        
    }else{
    
    
        puts("Usando a função strcasecmp as palavras são diferentes");
    
        }
    
    
    // strlen() - Função que retorna um long unsigned int (lu) com a quantidade de caracteres de uma string.
    
        char nome[256] = "Impacta";
    
    printf("\nO nome tem %lu caracteres", strlen(nome));
    
    
    
    // strcat() - Retorna uma string à partir da concatenação de outras duas
    
    char nome1 [256] = "Felipe";
    char nome2 [256] = "Martins";
    
    printf("\nA concatenação com a função strcat gerou: %s\n\n", strcat(nome1,nome2));
    
    // strcpy() - atribui o conteúdo de uma string para outra
    
   char antigoTexto [256] = "Texto Antigo";
    char novoTexto [256];
    
    strcpy(novoTexto, antigoTexto);
    
    printf("Conteúdo do novo texto: %s", novoTexto);
    
    
    
    
    
    return 0;
}

