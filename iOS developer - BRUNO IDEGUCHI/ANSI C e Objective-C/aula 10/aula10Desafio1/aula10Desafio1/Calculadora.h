

#import <Foundation/Foundation.h>

@interface Calculadora : NSObject{

    //Como a classe não irá salvar nada, não precisamos colocar parâmetros
    
}

//Aqui estamos declarando os métodos para a classe

+(float)somarNumero:(float)num1 comNumero:(float)num2;

+(float)subtrairNumero:(float)num1 comNumero:(float)num2;

+(float)multiplicarNumero:(float)num1 comNumero:(float)num2;

+(float)dividirNumero:(float)num1 comNumero:(float)num2;

@end
