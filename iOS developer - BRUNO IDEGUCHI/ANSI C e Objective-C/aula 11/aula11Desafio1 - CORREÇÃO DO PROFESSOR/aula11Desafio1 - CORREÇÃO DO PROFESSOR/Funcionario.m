//
//  Funcionario.m
//  aula11Desafio1 - CORREÇÃO DO PROFESSOR
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Funcionario.h"

@implementation Funcionario

@synthesize numeroPis;

+(void)baterPonto:(NSString *)umNome{
    
    NSLog(@"%@ está batendo ponto", umNome);
    
}
    
-(id)initWithNome:(NSString *)umNome andSobrenome:(NSString *)umSobrenome andIdade:(int)umaIdade andNumeroPis:(NSUInteger)umNumeroPis{
    
    //Usando o NSObject para inicializar
    self = [super init];
    
    if (self) {
        
        //Dica: Sempre utilizar o prefixo self para chamar uma propriedade
        self.nome = umNome;
        self.sobrenome = umSobrenome;
        self.idade = umaIdade;
        self.numeroPis = umNumeroPis;
        
    
        
    }
    
    return self;
    
}

@end
