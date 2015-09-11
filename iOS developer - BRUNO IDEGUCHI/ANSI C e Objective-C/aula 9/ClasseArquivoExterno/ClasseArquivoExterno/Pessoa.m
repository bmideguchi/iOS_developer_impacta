/*
 
 Como estamos trabalhando em documentos separados, necessáriamente nosso documento .m deve importar seu respectivo .h para ter acesso aos métodos e propriedades
 
 */


#import "Pessoa.h"

@implementation Pessoa


// Metodos Getters

-(NSString *)getNome{

    return nome;

}

-(NSString *)getSobrenome{
    
    
    return sobrenome;

}

// Metodos Setters



-(void)setNome:(NSString *)novoNome{

    nome = novoNome;
}

-(void)setSobrenome:(NSString *)novoSobrenome{


    sobrenome = novoSobrenome;

}

//

-(id)init{

    // id - É um tipo de dado genérico que representa qualquer dado orientado a objeto

    // iniciando previamente tudo que a classe pai inicia por si mesma.
    self = [super init];
    
    // Caso a inicializaçao tenha sido bem sucedida o sistema entrará no if
    if (self) {
        
        // Atribuimos valores padrões para as propriedades no momento da inicialização, assim não corremos o risco de termos valores nulos em um possível resgate.
        
        nome = @"NomePadrão";
        sobrenome = @"SobrenomePadrão";
        
        
    }
    
    
    return self;

}

// Método de classe (+) - É um método que é acionado diretamente pela CALSSE não precisando de uma instância (objeto) para ser excutado. Normalmente usado para procedimentos que não precisam ser armazenados.


+(void)exibeNome:(NSString *)umNome comSobrenome:(NSString *)umSobrenome{


    NSLog(@"%@ %@", umNome, umSobrenome);


}



+(void)mostraTudo:(Pessoa *)qualquerPessoa{

    NSLog(@"Nome: %@", [qualquerPessoa getNome]);
    NSLog(@"Sobrenome: %@\n\n", [qualquerPessoa getSobrenome]);


}



@end
