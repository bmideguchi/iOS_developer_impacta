//
//  main.c
//  aula7Desafio2
//
//  Created by NoiteA on 20/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

#include <stdlib.h>

char carros [10][256] = {"Ford Fiesta", "Honda city", "Chevrolet Agile", "Volkswagen Gol", "Lamborghini Countach", "Mitsubishi Eclipse", "Mazda mx3", "Nissan tiida", "Hyundai elantra", "Kia picanto", };

int escolha = 0;

void sorteio(){
    
    puts("-------------------- SORTEIO! --------------------\n");
    printf("O carro sorteado foi: %s\n\n", carros[arc4random()%10]);
    puts("--------------------------------------------------\n\n");
    
    printf("Sortear de novo?\n\nEscolha uma opção:\n[1] Continuar\n[2] Sair\n\nA opção escolhida foi:");
    scanf("%i", &escolha);
    
    switch (escolha) {
        
        case 1:
            printf("\n\n\n\n");
            sorteio();
            break;
        
        case 2:
            printf("Fim do programa.");
            break;
            
        default:
            printf("Opção inválida. \n");
            break;
    }
}







int main(int argc, const char * argv[])
{

    sorteio();
    return 0;
}

