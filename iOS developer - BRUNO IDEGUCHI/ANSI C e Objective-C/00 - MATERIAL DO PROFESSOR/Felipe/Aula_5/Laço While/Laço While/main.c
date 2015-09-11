
#include <stdio.h>

int main(int argc, const char * argv[])
{

    
    /* Laço WHILE
     
     Normalmente utilizado para uma repetição "enquanto condição" mas nada impede de ser usado para uma repetição controlada.
     
     
     Declaração
     
     
     while(condição){
     
     
            Bloco que é executado enquando a condição for verdadeira
     
     }
     
     */
    
    
    int opcao = 3;
    

    
    while (opcao == 1) {
        
        
        printf("Laço while!\n\n");
        puts("Insira a opção: ");
        scanf("%i",&opcao);
               
    }
    
    puts("Mano, saiu do laço!");
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}

