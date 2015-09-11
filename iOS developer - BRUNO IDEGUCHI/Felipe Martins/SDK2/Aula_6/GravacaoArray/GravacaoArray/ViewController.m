
/* Gravação de Array
 
 Podemos gravar um array em disco de maneira facilitada utilizando o método writeToFile. O arquivo gerado um arquivo .plist
 
 Como veremos a seguir.
 
 
*/

#import "ViewController.h"

// Criando o caminho

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"arraySalvo.plist"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"%@", PATH_ARQUIVO);
    
    
    // Podemos fazer a inicianlização de um aray da forma literal, conforme abaixo utilizando @ como prefixo (@ é a representação de orientação a objeto). FIcando a inicialização assim:
    
    self.arrayDados = @[@"Felipe", @"Florentino", @"José", @"Garibaldo", @"Lilica"];
    
    // Salvando este array em memória pelo writeToFile
    
    [self.arrayDados writeToFile:PATH_ARQUIVO atomically:YES];
    
    // Criando um array a partir dos dados salvos
    
    NSArray *arrayRecuperado = [NSArray arrayWithContentsOfFile:PATH_ARQUIVO];
    
    // Exibindo os arquivos recuperados
    NSLog(@"%@", arrayRecuperado);
    
    // A partir do dado recuperado podemos trata-lo como um array comum
    
    NSLog(@"Acessando o item 2: %@", [arrayRecuperado objectAtIndex:2]);
    
    // ---------------------------------------------
    
    // Podemos também resgatar os dados e colocá-los em uma string
    
    NSString *stringDadosRecuperados = [NSString stringWithContentsOfFile:PATH_ARQUIVO encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"\n\n\n\n\n Dados em string:\n\n\n\n\n %@", stringDadosRecuperados);
    
    // quando trazemos um arquivo de .plist por meio de uma string descobrimos que ele nada mais é do que um arquivo baseado em XML que é criado de maneira facilitada pelo sistema.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
