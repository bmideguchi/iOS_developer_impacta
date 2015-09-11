//
//  Pessoa.m
//  aula11Desafio1 - CORREÇÃO DO PROFESSOR
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

@synthesize nome, sobrenome;
@synthesize idade;

+(void)respirar:(NSString *)umNome{
    
    NSLog(@"%@ está respirando", umNome);
    
}

@end
