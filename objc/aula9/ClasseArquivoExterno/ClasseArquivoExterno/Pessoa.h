
/*
    Quando criamos classes em um arquivo externo sua implementação é dividada em 2 partes.
 
 Documento .h - Nosso documento de declaração, onde nosso espaço @interface está contido. Aqui declaramos nossas variáveis (propriedades) da classe e nosso métodos.
 
 Documento .m - Nosso documento de implementação, onde nosso espaço @implementation esta contido. Nele implementamos nossos métodos
 
 */


#import <Foundation/Foundation.h>



@interface Pessoa : NSObject {
    
    // Criação das variáveis (propriedades da classe)
    NSString *nome;
    NSString *sobrenome;
    

}

// Metodos Getters

-(NSString *)getNome;
-(NSString *)getSobrenome;


// Metodos Setters

-(void)setNome:(NSString *)novoNome;
-(void)setSobrenome:(NSString *)novoSobrenome;


/* Polimorfismo - É a técnica de sobrepor um método existente na classe pai, desta forma nosa classe filha (subclasse) pode tomar suas próprias ações e reagir de maneira diferente da classe pai (superclasse) para um mesmo método

 */


-(id)init;


/*Podemos passar mais de um parâmetro para um método assim como fizemos com funções, a sintaxe é a seguinte:
 
-(tipoDeRetorno)nomeDoMetodo:(tipoDeDadoDoPrimeiroParametro)nomeInternoDoPrimeiroParametro nomeExternoDoSegundoParametro:(tipoDeDadoDoSegundoParametro)nomeInternoDoSegundoParametro;
 
 */

+(void)exibeNome:(NSString *)umNome comSobrenome:(NSString *)umSobrenome;





+(void)mostraTudo:(Pessoa *)qualquerPessoa;


@end
