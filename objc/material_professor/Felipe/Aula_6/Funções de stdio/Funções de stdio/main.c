
#include <stdio.h>

int main(int argc, const char * argv[])
{

    
    /* Funções são blocos de código que executam determinada tarefa específica e podem ser executados quantas vezes o programador achar necessário.
     
     A inclusão de bibliotecas nos permitem ter acesso a suas funções.
     
     
     */
    
    // Funções da biblioteca stdio.h
    
    //printf()
    // puts()
    //scanf()
    //gets()
    
    // Função getchar() - retorna um inteiro a partir de um caractere resgatado (TABELA ASCII).
    
    int caractere;
    
    puts("Insira um Caractere: ");
    caractere = getchar();
    
    printf("Caractere digitado: %c e tem o seguinte código na tabela ASCII: %i\n",caractere,caractere);
    
    
    // Função sprint() - Responsável por concatenar strings podendo utilizar variáveis
    
    char texto1[256] = "IMPACTA";
    char texto2[256] = "Tecnologia";
    
    char tudoJunto[256];
    
    
    sprintf(tudoJunto, "\nEstamos no treinamento de iOS na %s %s",texto1,texto2);
    printf("%s",tudoJunto);
    
    //
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}

