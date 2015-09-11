//
//  main.c
//  testeCalculadora2
//
//  Created by NoiteA on 15/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

float variavel1 = 0.0;
float variavel2 = 0.0;
char recomeco;
char escolha = '\0';
void calculo();

//FUNCAO PROGRAMA
    void programa(){
    
    puts("=======================================\n---------- CALCULADORA  v2.0 ----------\n=======================================\n\nEssa é uma calculadora básica de 2 números.\n\n");
        printf("Digite o primeiro número:");
    scanf("%f", &variavel1);
    //Fim do início
        calculo();
    }

void calculo(){
    
    //Texto principal
    puts("\n\nO que deseja fazer?\n\n[+] Somar;\n[-]Subtrair;\n[*]Multiplicar;\n[/]Dividir;\n[2]Elevar ao quadrado\n\nDigite sua escolha:");
    scanf("%s", &escolha);
    
    
    //Se for operação básica
    if (escolha=='+' || escolha=='-' || escolha=='*' || escolha=='/'){
        printf("\n\nDigite o segundo número:");
        scanf("%f", &variavel2);
        
        switch (escolha) {
                
            case '+':
                printf("\n\n%.2f + %.2f = %.2f\n\n", variavel1, variavel2, variavel1+variavel2);
                break;
                
            case '-':
                printf("\n\n%.2f - %.2f = %.2f\n\n", variavel1, variavel2, variavel1-variavel2);
                break;
                
            case '*':
                printf("\n\n%.2f * %.2f = %.2f\n\n", variavel1, variavel2, variavel1*variavel2);
                break;
                
            case '/':
                printf("\n\n%.2f / %.2f = %.2f\n\nf", variavel1, variavel2, variavel1/variavel2);
                break;
                
            default:
                puts("Opção inválida.");
                calculo();
                break;
        }
        
        
    }
    
    
    //Se for ao quadrado
    if (escolha=='2'){
        printf("\n\nO quadrado de %.2f é: %.2f\n\n", variavel1, variavel1*variavel1);
    }
    
    if (escolha!='+' && escolha!='-' && escolha!='*' && escolha!='/' && escolha!='2'){
        
        printf("Escolha inválida. Escolha novamente\n\n");
        calculo();
        
    }
}







//FUNCAO RECOMECAR
void recomecar(){
    puts("\n\n---- FAZER OUTRO CALCULO? (s/n) ----");
    
    scanf("%s", &recomeco);
    
    switch (recomeco) {
        case 's':
            puts("\n\n");
            programa();
            recomecar();
            break;
            
        case 'n':
            puts("Fim do programa.");
            break;
            
        default:
            recomecar();
            break;
    }
}






//PROGRAMA
int main(int argc, const char * argv[])
{
    

    programa();
    recomecar();
    return 0;
}

