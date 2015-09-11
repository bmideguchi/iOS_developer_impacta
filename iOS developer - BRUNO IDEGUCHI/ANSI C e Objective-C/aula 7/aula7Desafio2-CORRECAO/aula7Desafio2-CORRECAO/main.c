//
//  main.c
//  aula7Desafio2-CORRECAO
//
//  Created by NoiteA on 22/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#include <stdio.h>

//Inclusão da stdlib.h para usar as funções randômicas
#include <stdlib.h>


//declaração da função sorteiaCarros()
void sorteiaCarros();




//Declaração do programa principal
int main(int argc, const char * argv[])
{
    
    //Criando a opção de controle
    int opc = 1;
    
    //Criando o laço que controla a quantidade de exceções
    
    do {
        
        sorteiaCarros();
        
        //Pedindo escolha do usuário em continuar ou não
        puts("Digite 1 para continuar ou 2 para sair");
        scanf("%i", &opc);
    
    } while (opc == 1);
    
    if (opc == 2) {
        puts("\nPrograma encerrado.");
    }
    
    else{
        puts("\nVocê fez uma escolha inválida, e o programa será encerrado automticamente.");
    }
    
    return 0;
}





void sorteiaCarros(){
    
    //Criação da array com os carros
    char arrayCarros [10][256] = {"Ferrari", "Porsche", "Fiat 147", "Lamborghini", "Gurgel", "Fusca", "Jetta", "Citroën C5", "Uno", "BMW" };
    
    //Criação da variavel que armazena o numero randomico sorteado
    int sorteado = arc4random()%10;
    
    //Exibindo o carro sorteado
    
    printf("O carro sorteado foi: %s\n\n", arrayCarros[sorteado]);
}
