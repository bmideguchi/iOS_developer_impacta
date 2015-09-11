//
//  Pessoa.h
//  initCustomizado
//
//  Created by NoiteA on 27/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

@property(nonatomic, retain) NSString *nome;

@property(nonatomic, retain) NSString *sobrenome;

/*
 
 ============| Init Customizado |============
 
 Podemos criar um método init customizado de acordo com as necessidades do sistema, passando parâmetros e alterando valores das propriedades de nossa classe.
 
 Seguindo as regras de criação de métodos com parâmetros.
 
 */

-(id)initWithNome:(NSString *)umNome andSobrenome:(NSString *)umSobrenome;

@end
