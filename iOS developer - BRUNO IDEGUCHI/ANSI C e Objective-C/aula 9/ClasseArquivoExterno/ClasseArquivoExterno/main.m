
#import <Foundation/Foundation.h>
#import "Pessoa.h"

int main(int argc, const char * argv[])
{
    // @autoreleasepool é um bloco de gerenciamento de memória.
    @autoreleasepool {
        
        // Criando e iniciando um objeto da nova classe Pessoa
        Pessoa *pessoa1 = [[Pessoa alloc]init];
        
        // inserindo valores em suas prorpiedades
        [pessoa1 setNome:@"Lilica"];
        [pessoa1 setSobrenome:@"Capelo"];
        
        // Resgatando valores inseridos
        NSLog(@"Nome: %@", [pessoa1 getNome]);
        NSLog(@"Sobrenome: %@\n\n", [pessoa1 getSobrenome]);

//----------------------------------------------------------------------
        
        Pessoa *pessoa2 = [[Pessoa alloc]init];
        
        NSLog(@"pessoa2 Nome: %@",[pessoa2 getNome]);
        NSLog(@"pessoa2 Sobrenome: %@\n\n", [pessoa2 getSobrenome]);
        
        
        [pessoa2 setNome:@"Oscar"];
        [pessoa2 setSobrenome:@"Cebola\n\n"];
        
        
        NSLog(@"pessoa2 Nome: %@",[pessoa2 getNome]);
        NSLog(@"pessoa2 Sobrenome: %@", [pessoa2 getSobrenome]);
        
        
        
//----------------------------------------------------------------------
        
        Pessoa *pessoa3 = [[Pessoa alloc]init];
        
        [pessoa3 setNome:@"Osmar"];
        [pessoa3 setSobrenome:@"Lacabado"];
    
        
//----------------------------------------------------------------------
        
        [Pessoa mostraTudo:pessoa2];

//----------------------------------------------------------------------
        
        [Pessoa exibeNome:[pessoa3 getNome] comSobrenome:[pessoa3 getSobrenome]];
        
        
        
        Pessoa *pessoa4 = [[Pessoa alloc]init];
        NSLog(@"Pessoa4 Nome: %@", [pessoa4 getNome]);
        
        
        
        //------------------------------------
        
        [Pessoa exibeNome:@"Bruno" comSobrenome:@"Ideguchi"];
        
        
    }
    return 0;
}

