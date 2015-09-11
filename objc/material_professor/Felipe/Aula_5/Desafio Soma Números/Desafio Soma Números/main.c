

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // Iniciando as declaráveis
    int numero;
    int total = 0;
    int controlador = 1;
    
    // Pedindo a inserção do número
    puts("Insira um número: ");
    scanf("%i",&numero);
    
    // Criando o laço de repetição
    while (controlador <= numero) {
        
        // Somando o valor e colocando na variável total
        total = total + controlador;
        
        // NUNCA esquecer de fazer o incremento dentro do laço WHILE;
        
        // Incrementando o controlador
        controlador++;
        
    }
    
    // Imprimindo o Total
    printf("Total:%i", total);
    
    
    
    return 0;
}

