

#import <UIKit/UIKit.h>


// Importando o NSXMLParser delegate
@interface ViewController : UIViewController <NSXMLParserDelegate>


// Array que armazenará todos os registros do XML

@property (nonatomic, strong) NSMutableArray *arrayPessoas;

// Dicionário que representará cada aluno (armazenará o nome e a idade)

@property (nonatomic, strong) NSMutableDictionary *dicionarioAluno;

// String que armazenará a tag atual
@property (nonatomic, strong) NSString *tagAtual;

// String que armazerará o texto das tags de conteúdo

@property (nonatomic, strong) NSMutableString *conteudoTag;


@end
