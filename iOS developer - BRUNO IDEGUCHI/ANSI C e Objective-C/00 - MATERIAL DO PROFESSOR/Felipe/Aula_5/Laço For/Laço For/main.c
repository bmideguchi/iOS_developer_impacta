

#include <stdio.h>

int main(int argc, const char * argv[])
{

    /* Estruturas de Repetição

     FOR - É uma estrutura de repetição normalmente usada para um loop controlado por determinado número de vezes.
     
     Declaração:
     
     for(inicialização da variável de controle; condição de repetição; incremento){
     
     
     Bloco de código que será executado determinado número de vezes
     
     
     }
     
     */
    
    
    // Criação de um FOR com inicialização e declaração na estrutura
    
    
    for (int i = 1; i <= 10; i++) {
        
        
        puts("IMPACTA");
        
    }
    
    // Criação de um FOR com variável fora do laço.
    
    
    int i;
    
    printf("\n");
    
    for (i = 1; i<=10; i++) {
        
        
        printf("O laço que está sendo executado é o se número: %i\n",i);
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}

