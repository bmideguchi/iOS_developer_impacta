
#import <Foundation/Foundation.h>

#import "Funcionario.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Criando um novo funcionário
        Funcionario *novoFuncionario = [[Funcionario alloc]initWithNome:@"Garibaldo" andSobrenome:@"Souza" andIdade:98 andNumeroPis:4245254265];
        
        //Chamando o método RESPIRAR
        [Funcionario respirar:novoFuncionario.nome];
        
        
        //Imprimindo os dados de novoFuncionario - Detalhe: Como numeroPis foi declarado como NSUInteger, devemos colocar o indicador como %lu:
        NSLog(@"O nome é: %@ %@, a idade é: %i e o número do PIS é: %lu", novoFuncionario.nome, novoFuncionario.sobrenome, novoFuncionario.idade, novoFuncionario.numeroPis);
                                                                                                            
        
    }
    
    return 0;
}

