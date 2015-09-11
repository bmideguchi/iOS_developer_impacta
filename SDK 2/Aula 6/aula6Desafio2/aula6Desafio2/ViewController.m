/*
 Gravação de array
 
 Podemos gravar um array em disco de maneira facilitada utilizando o método writeToFile. O arquivo gerado é um arquivo .plist como veremos a seguir
 */

#import "ViewController.h"

//Criando o caminho

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"arraySalvo.plist"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", DOCUMENTS);
    
    //Podemos fazer a inicialização da seguinte forma:
    self.arrayDados = @[@"Felipe", @"Florentino", @"José", @"Garibaldo", @"Lilica"];
    
    //Salvando este array em memória pelo writeToFile
    [self.arrayDados writeToFile:PATH_ARQUIVO atomically:YES];
    
    //Criando um array a partir dos dados salvos
    NSArray *arrayRecuperado = [NSArray arrayWithContentsOfFile:PATH_ARQUIVO];
    
    //Exibindo os arquivos recuperados
    NSLog(@"%@", arrayRecuperado);
    
    //A partir do dado recuperado podemos tratá-lo como um array comum
    NSLog(@"%@", [arrayRecuperado objectAtIndex:2]);
    
    //---------------------------------
    
    //Podemos também resgatar os dados e colocá-los em uma string
    
    NSString *stringDadosRecuperados = [NSString stringWithContentsOfFile:PATH_ARQUIVO encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"\n\n\n\n\n Dados em string: \n\n\n\n\n %@", stringDadosRecuperados);
    
    //Quando trazemos um arquivo de .plist por meio de uma string descobrimos que ele nada mais é do que um arquivo baseado em XML que é criado de maneira facilitada pelo sistema.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
