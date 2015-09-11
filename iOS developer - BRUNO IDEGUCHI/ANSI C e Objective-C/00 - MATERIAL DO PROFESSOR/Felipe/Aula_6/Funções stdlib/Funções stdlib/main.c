
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

int main(int argc, const char * argv[])
{

    
    // Função rand() - Retorna um número inteiro pseudorandômico entre 0 e um limite máximo que podemos controlar pelo operador MOD(%) ou pelo padrão que é 2.147.483.647.
    
    // Por padrão sorteia o primeiro número igual
    
    
    
    int numero = rand();
    int numero2 = rand()%10;
    
 //   for (int i = 1; i<= 10; i++) {
        
        printf("O número sorteado é: %d\n", numero);
        printf("O número sorteado é: %d\n", numero2);
        
 //   }
    
    
    // A função srand() - permite a entrada de um parâmetro "semente" e a partir dele os sorteios são gerados. Podemos inserir um número inteiro e ele será por padrão, ou passar um parâmetro da biblioteca time.h que usa um valor que muda a cada segundo gerando sorteios aleatórios entre si.
    
    
    
    srand(time(NULL));
    
    int numero3 = rand();
    int numero4 = rand()%10;
    
    printf("O número sorteado é: %d\n", numero3);
    printf("Onumero sorteado e: %d\n", numero4);
    
    
    
    //Arc4Random() - Sorteia aleatoriamente sem precisar de parâmetro
    int sorteado = arc4random()%10;

    
    printf("Sorteio por arc4random: %i", sorteado);
    
    
    return 0;
}

