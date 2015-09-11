//
//  main.c
//  funcaoCustomizadsa
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>


// Além d eusar funções do sistema podemos criar nossas próprias funções para processamentos específicos no nosso programa.

/* Declaração de uma função:
 
 
 tipoDeRetorno nomeDaFuncao(parametros){
 Código a ser executado
 }
 
 
 */



//Função sem retorno e sem parâmetros

void exibeNome(){
    
    puts("Meu nome é Bruno");
}





//Função sem retorno e com parâmetros

void exibeSoma(int num1, int num2){
    printf("A soma é: %i\n", num1 + num2);
}






//Função com parâmetros e com retorno

int multiplicaNumeros(int num1, int num2){
    int total = num1 * num2;
    return total;
}












int main(int argc, const char * argv[])
{

    
    exibeNome();
    exibeSoma(5,10);
    
    int resultado = multiplicaNumeros(5, 2);
    printf("O resultado da multiplicação é: %i\n", resultado);
    
    return 0;
}

