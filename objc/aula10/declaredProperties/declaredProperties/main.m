

#import <Foundation/Foundation.h>

#import "Pessoa.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Criando um objeto de nossa classe Pessoa
        Pessoa *novaPessoa = [[Pessoa alloc]init];
        
        //-------------------------------------------------------------
        
        //Atribuindo um valor pelo método SETTER criado automaticamente
        [novaPessoa setNome:@"Garibaldo"];
        [novaPessoa setIdade:98];
        
        //Resgatar os valores pela bracketSyntax
        NSLog(@"Nome: %@", [novaPessoa nome]);
        NSLog(@"Idade: %i\n\n\n", [novaPessoa idade]);
        
        //-------------------------------------------------------------
        
        //Atribuindo um valor por meio da dotSyntax
        novaPessoa.nome = @"Filisbina";
        novaPessoa.idade = 96;
        
        //Resgatar os valores pelo dotSyntax
        NSLog(@"Nome: %@", novaPessoa.nome);
        NSLog(@"Idade: %i", novaPessoa.idade);
        
    }
    return 0;
}

