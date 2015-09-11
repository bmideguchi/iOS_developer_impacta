//
//  main.c
//  calculadoraAula
//
//  Created by NoiteA on 17/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>


float somar(int num1, int num2){
    float total = num1+num2;
    return total;
}

float subtrair(int num1, int num2){
    float total = num1-num2;
    return total;
}

float multiplicar(int num1, int num2){
    float total = num1*num2;
    return total;
}

float dividir(int num1, int num2){
    float total = num1/num2;
    return total;
}


int main(int argc, const char * argv[])
{

    float numero1 = 10.0;
    float numero2 = 2.0;
    
    printf("A soma é: %.2f\n",somar(numero1, numero2));
    printf("A subtração é: %.2f\n",subtrair(numero1, numero2));
    printf("A multiplicação é: %.2f\n",multiplicar(numero1, numero2));
    printf("A divisão é: %.2f\n",dividir(numero1, numero2));
    return 0;
}

