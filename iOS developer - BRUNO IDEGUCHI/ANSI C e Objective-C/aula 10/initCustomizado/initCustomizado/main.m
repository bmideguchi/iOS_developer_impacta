

#import <Foundation/Foundation.h>

#import "Pessoa.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Pessoa *novaPessoa = [[Pessoa alloc]initWithNome:@"Tirulipa" andSobrenome:@"Junior"];
    
        NSLog(@"Nome: %@", novaPessoa.nome);
        NSLog(@"Sobrenome: %@", novaPessoa.sobrenome);
    
    
    
    
    }
    
    return 0;
}

