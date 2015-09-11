//
//  main.c
//  funcoesMatematicas
//
//  Created by NoiteA on 20/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

#include <math.h>

#define CONSTANTE 3.23

int main(int argc, const char * argv[])
{

    // A partir da biblioteca math.h podemos utilizar diversas funções matemáticas
    
    /*
     
     Função pow() - faz a elevação de um número a determinada potência.
     
     Quando desejamos utilizar a função pow() de maneira direta, devemos resgatar os dados como float,
     
     Para resgatarmos como int, devemos utilizar a função pow() e alocar em uma variável do tipo int.
     
     */
    
    
    int elevacao = pow(2, 3);
    
    printf("O valor da elevação é: %i\n", elevacao);
    
    
    printf("Resgate pela função pow de maneira direta: %.2f\n", pow(2,3));
    
    
    
    
    
    
    //Conversão (cast) de dados:
    
    /*
     Podemos fazer uma conversão de tipo utilizando a seguinte estrutura:

     (novo formato)função()          OU          (novo formato)variável
     */
    
    printf("Resgate pela função pow de maneira direta com tipagem: %i\n\n", (int)pow(2,3));
    
    
    
    
    
    
    
    //Além de funções podemos utilizar "Constantes" da biblioteca, como por exemplo o PI.
    
    float valorPI = M_PI;
    printf("O valor do PI é: %f\n", valorPI);
    
    printf("O valor da CONSTANTE é: %.2f\n\n", CONSTANTE);
    
    
    
    
    
    
    //Função round() - Função de arredondamento para o inteiro mais próximo
    
    float soma = 10+5.5;
    
    printf("A soma é: %.2f\n", soma);
    printf("Utilizando a função round o resultado da soma é: %.2f\n\n", round(soma));
    
    
    
    
    
    
    //Função ceil() - função de arredondamento para cima
    
    float soma2 = 10 + 2.2;
    
    printf("A variável soma2 é: %.2f\n", soma2);
    printf("A variável soma2 com a função ceil é: %.2f\n\n", ceil(soma2));
    
    
    
    
    
    //Função floor() - função de arredondamento para baixo
    
    float soma3 = 5 + 3.9;
    
    printf("A variável soma3 é: %.2f\n", soma3);
    printf("A variável soma3 com a função floor é: %.2f\n\n", floor(soma3));
    
    
    
    
    
    //Precedência de operadores
    
    /*
     
     Quando desejamos que determinada operação matemática seja resolvida de maneira preferencial podemos utilizar a precedência de operadores utilizando parenteses
     
     */
    
    int valor1 = 10;
    int valor2 = 1;
    
    printf("\n\nprecedência: %i\n", valor1+valor2*4);
    printf("precedência forçada com parënteses: %i\n", (valor1+valor2)*4);
    
    return 0;
}

