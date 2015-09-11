//
//  main.c
//  aula7Desafio1
//
//  Created by NoiteA on 20/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>
float peso = 0;
float altura = 0;
float total = 0;
char escolha;





float imc(float peso, float altura){
    total = peso/(altura*altura);
    
    puts("\n\nPasso a passo\n");
    printf("%.2f X %.2f = %.2f\n\n", altura, altura, altura * altura);
    printf("%.2f/(%.2f X %.2f) = imc (%.2f)\n\n", peso, altura, altura, peso/(altura*altura));
    return total;
}





void classificacao(){
    
    if (total<=18.5) {
        printf("Excesso de magreza");
    }
    
    if (total>18.5 && total<=25) {
        printf("Peso normal");
    }
    
    if (total>25 && total<=30) {
        printf("Excesso de peso");
    }
    
    if (total>30 && total<=35) {
        printf("Obesidade - grau I");
    }
    
    if (total>35 && total<=40) {
        printf("Obesidade - grau II");
    }
    
    if (total>=40){
        printf("Obesidade - grau III");
        
    }
    
};





void inicio(){
    printf("Digite o seu peso (quilogramas):");
    scanf("%f", &peso);
    
    printf("Digite a sua altura (metros):");
    scanf("%f", &altura);
}















int main(int argc, const char * argv[])
{

    inicio();
    
    imc(peso, altura);
    
    puts("------------ RESULTADO ------------");
    
    classificacao();
    
    puts("\n-----------------------------------\n");

    
    return 0;
    
}

