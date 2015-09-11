//
//  main.m
//  aula11Desafio1
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Funcionario.h"
#import "Pessoa.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //Criando o funcionário 1
        Funcionario *funcionario1 = [[Funcionario alloc] init];
        
        funcionario1.nome = @"Bruno";
        funcionario1.Sobrenome = @"Ideguchi";
        funcionario1.idade = 24;
        funcionario1.numeroDoPis = 333222111;
        
        
        
        
        //Imprimindo os dados de funcionário 1        
        NSLog(@"O nome é: %@ %@, a idade é: %i e o número do PIS é: %i", funcionario1.nome, funcionario1.sobrenome, funcionario1.idade, funcionario1.numeroDoPis);
        
        
        
        
        //Colocando os métodos pra rodar!
        [funcionario1 baterPonto:funcionario1.nome andSobrenome:funcionario1.sobrenome];
        [funcionario1 respirar:funcionario1.nome andSobrenome:funcionario1.sobrenome];
            
        }
        
    
    return 0;
}

