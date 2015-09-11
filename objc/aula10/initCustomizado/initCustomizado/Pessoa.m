//
//  Pessoa.m
//  initCustomizado
//
//  Created by NoiteA on 27/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

@synthesize nome;

@synthesize sobrenome;





-(id)initWithNome:(NSString *)umNome andSobrenome:(NSString *)umSobrenome{

    self = [super init];
    
    if (self) {
        nome = umNome;
        sobrenome = umSobrenome;
    }

    return self;

}





@end
