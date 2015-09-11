//
//  Pessoa.h
//  aula11Desafio1
//
//  Created by NoiteA on 29/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

@property (nonatomic, retain) NSString *nome;
@property (nonatomic, retain) NSString *sobrenome;
@property (nonatomic, assign) int idade;



//Método que recebe os parâmetros "umNome" e "umSobrenome":
-(void)respirar:(NSString *)umNome andSobrenome:(NSString *)umSobrenome;

@end
