

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Inicialização das variáveis
    int num1,num2;
    
    // Pedimos a inserção dos números ao usuário
    puts("Insira o primeiro número: ");
    
    scanf("%i",&num1);
    
    puts("Insira o segundo número: ");
    
    scanf("%i",&num2);
    
    // Iniciamos o primeiro laço de repetição que dara o intervalo entre os números inseridos
    for (int j = num1; j <= num2; j++) {
        
        // Exibimos a tabuada que será calculada
        printf("Tabuada do %i\n\n",j);
        
        // For que calcula a tabuada
        for (int i = 1; i <= 10; i++) {
            
            // Exibimos a linha calculada
            printf("%i X %i = %i\n",j, i, j*i);
            
        }
        
        
        
    }
    
    
    
    
    return 0;
}

