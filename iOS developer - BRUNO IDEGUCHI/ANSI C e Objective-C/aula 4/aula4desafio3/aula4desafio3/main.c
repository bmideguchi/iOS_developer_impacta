//
//  main.c
//  aula4desafio3
//
//  Created by NoiteA on 13/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    
    //Declaração das variáveis
    float valor;
    int opcao;
    
    
    //Início do programa
    printf("Digite o valor a ser investido:");
    scanf("%f", &valor);
    
    
    //Caso o valor seja menor ou igual a 1000
    if (valor<=1000){
        printf("Escolha a opção de investimentos mais adequada:\n\n");
        puts("[1]\tOpção 1 - Linha Bronze - Rendimento anual de 5% (Conservador).\n");
        puts("[2]\tOpção 2 - Linha Prata - Rendimento anual de 10%.\n");
        printf("Digite sua escolha:");
        scanf("%i", &opcao);
        
        
        //Escolha da opção
        switch (opcao) {
            
            case 1:
                
                printf("A opção escolhida foi: %i\n", opcao);
                printf("O valor investido foi: %.2f\n", valor);
                printf("O resgate em 1 ano será: %.2f\n", valor+0.05*valor);

            break;
                
            case 2:
                
                printf("A opção escolhida foi: %i\n", opcao);
                printf("O valor investido foi: %.2f\n", valor);
                printf("O resgate em 1 ano será: %.2f\n", valor+0.10*valor);
                
            break;
                
            default:
             
                puts("Opção inválida");
                
            break;
        }
    }
    
    
    //Caso o valor seja maior que 1000
    else{
        printf("Escolha a opção de investimentos mais adequada:\n\n");
        puts("[1]\tOpção 1 - Linha Ouro - Rendimento anual de 15% (Conservador).\n");
        puts("[2]\tOpção 2 - Linha Diamante - Rendimento anual de 20%.\n");
        printf("Digite sua escolha:");
        scanf("%i", &opcao);
        
        
        //Escolha da opção
        switch (opcao) {
                
            case 1:
                
                printf("A opção escolhida foi: %i\n", opcao);
                printf("O valor investido foi: %.2f\n", valor);
                printf("O resgate em 1 ano será: %.2f\n", valor+0.15*valor);
                
                break;
                
            case 2:
                
                printf("A opção escolhida foi: %i\n", opcao);
                printf("O valor investido foi: %.2f\n", valor);
                printf("O resgate em 1 ano será: %.2f\n", valor+0.20*valor);
                
                break;
                
            default:
                
                puts("Opção inválida");
                
                break;
        
    }
    
        
    
    return 0;
}
    puts("\nObrigado pela preferência!");
    
}
