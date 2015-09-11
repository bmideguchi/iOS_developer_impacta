

#include <stdio.h>

int main(int argc, const char * argv[])
{

   
    /* DO WHILE
     
     Assim como o laço while, mas comuma execução garantida.
     
     
     Declaração:
     
     
     
     do{
     
     
     // bloco que será executado
        
     
     
     }while();
     
    */
    
    
    
    int opc = 3;
    
    
    do {
        
        puts("Laço DO WHILE!!!\n");
        
        puts("Insira uma opção: ");
        scanf("%i",&opc);
        
        
        
        
        
    } while (opc == 1);
    
    puts("Brother, saiu do laço!");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}

