//
//  Funcionario.m
//  aula11Desafio1
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Funcionario.h"

@implementation Funcionario

@synthesize numeroDoPis;



//Método que imprime os parâmetros "umNome" e "umSobrenome":
-(void)baterPonto:(NSString *)umNome andSobrenome:(NSString *)umSobrenome{
    
    NSLog(@"%@ %@ está batendo ponto", umNome, umSobrenome);
    
    
}

@end

