

#import "Pessoa.h"

@implementation Pessoa 

@synthesize nome;
@synthesize sobrenome;
@synthesize idade;



//Método que imprime os parâmetros "umNome" e "umSobrenome":
-(void)respirar:(NSString *)umNome andSobrenome:(NSString *)umSobrenome{
    
    NSLog(@"%@ %@ está respirando",umNome, umSobrenome);

}

@end
