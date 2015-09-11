

#import <Foundation/Foundation.h>

@interface Cliente : NSObject{
    
    NSString *nome;
    NSString *sobrenome;
    int idade;
    
}

//GETTERS
-(NSString *)getNome;
-(NSString *)getSobrenome;
-(int)getIdade;

//SETTERS
-(void)setNome:(NSString *)novoNome;
-(void)setSobrenome:(NSString *)novoSobrenome;
-(void)setIdade:(int)novaIdade;

@end






@implementation Cliente


//GETTERS
-(NSString *)getNome{
    return nome;
}

-(NSString *)getSobrenome{
    return sobrenome;
}

-(int)getIdade{
    return idade;
}

//SETTERS

-(void)setNome:(NSString *)novoNome{
    nome = novoNome;
}

-(void)setSobrenome:(NSString *)novoSobrenome{
    sobrenome = novoSobrenome;
}

-(void)setIdade:(int)novaIdade{
    idade = novaIdade;
}

@end








int main(int argc, const char * argv[])
{

    Cliente *novoCliente = [[Cliente alloc]init];
    
    [novoCliente setNome:@"Bruno"];
    [novoCliente setSobrenome:@"Ideguchi"];
    [novoCliente setIdade:24];
    
    NSLog(@"Nome: %@ %@", [novoCliente getNome], [novoCliente getSobrenome]);
    NSLog(@"Nome: %i", [novoCliente getIdade]);
    
    return 0;
}

