//
//  Calculadora.m
//  aula10Desafio1
//
//  Created by NoiteA on 27/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "Calculadora.h"

@implementation Calculadora


+(float)somarNumero:(float)num1 comNumero:(float)num2{
    
    return num1 + num2;
    
}


+(float)subtrairNumero:(float)num1 comNumero:(float)num2{
    
    return num1 - num2;
    
}


+(float)multiplicarNumero:(float)num1 comNumero:(float)num2{
    
    return num1 * num2;
    
}


+(float)dividirNumero:(float)num1 comNumero:(float)num2{
    
    if (num2 == 0){
        return 0;
    }
    
    return num1 / num2;
    
}


@end
