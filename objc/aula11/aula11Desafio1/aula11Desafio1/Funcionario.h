//
//  Funcionario.h
//  aula11Desafio1
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Pessoa.h"

@interface Funcionario : Pessoa

@property (nonatomic, assign) int numeroDoPis;



//Método que imprime os parâmetros "umNome" e "umSobrenome":
-(void)baterPonto:(NSString *)umNome andSobrenome:(NSString *)umSobrenome;

@end

