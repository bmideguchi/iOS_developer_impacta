
#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

/*
 
 
 
 ============| Properties (property) |============
 
 Propriedades são variáveis declaradas na classe que serão utilizadas pelos objetos que instanciam esta classe.
 
 
 
 
 
 ============| Declared Properties |============
 
 São usadas para substituir a declaração e implementação de accessor methods e nos fornecem acesso por meio da dotSyntax ('.').

 Sintaxe:
 
 @property (atributosDaPropriedade) Classe *nome;
 
 OU
 
 @property (atributosDaPropriedade) tipo nome;
 
 
 
 
 */

@property (nonatomic, retain) NSString *nome;

@property (nonatomic, assign) int idade;



@end
