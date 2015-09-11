

#import <Foundation/Foundation.h>

//Para termos acesso a uma classe, temos que importá-la:
#import "Calculadora.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Declarando as variáveis
        float numero1 = 10.0;
        float numero2 = 5.0;
    
        //Retornando os métodos
        NSLog(@"Soma: %.2f", [Calculadora somarNumero:numero1 comNumero:numero2]);
        NSLog(@"Subtração: %.2f", [Calculadora subtrairNumero:numero1 comNumero:numero2]);
        NSLog(@"Multiplicação: %.2f", [Calculadora multiplicarNumero:numero1 comNumero:numero2]);
        NSLog(@"Divisão: %.2f", [Calculadora dividirNumero:numero1 comNumero:numero2]);
    
    
    
    
    
    }
    return 0;
}

