

#include <stdio.h>

int main(int argc, const char * argv[])
{

    
    int numero;
    
    puts("Insira o valor para calculo da tabuada");
    scanf("%i",&numero);
    
    
    for (int i = 1; i<=10; i++) {
        
        
        printf("%i x %i = %i\n", i, numero,i*numero);
        
        
    }
    
    
    
    return 0;
}

