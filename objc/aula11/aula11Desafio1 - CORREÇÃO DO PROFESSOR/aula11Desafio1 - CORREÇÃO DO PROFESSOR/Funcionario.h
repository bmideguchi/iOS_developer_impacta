//
//  Funcionario.h
//  aula11Desafio1 - CORREÇÃO DO PROFESSOR
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Pessoa.h"

@interface Funcionario : Pessoa

@property (nonatomic, assign) NSUInteger numeroPis;

+(void) baterPonto:(NSString *)umNome;


//Criando um init customizado com todas as propriedades da classe FUNCIONARIO e as propriedades herdadas da classe PESSOA
-(id)initWithNome:(NSString *)umNome andSobrenome:(NSString *)umSobrenome andIdade:(int)umaIdade andNumeroPis:(NSUInteger)umNumeroPis;


@end
