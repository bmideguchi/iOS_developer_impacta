//
//  NSString+StringReversa.m
//  categorias
//
//  Created by NoiteA on 27/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "NSString+StringReversa.h"

@implementation NSString (StringReversa)

+(NSString *)stringReversa:(NSString *)texto{
    
    
    //Pegamos o tamanho do nosso parâmetro texto
    int tamanhoTexto = (int)[texto length];
    
    //Criamos uma string mutável para receber a inversão
    NSMutableString *novaString = [[NSMutableString alloc]init];
    
    for (int i= tamanhoTexto - 1; i >= 0; i--) {
        [novaString appendString:[NSString stringWithFormat:@"%c", [texto characterAtIndex:i]]];
    }
    
    return novaString;
    
}

@end
