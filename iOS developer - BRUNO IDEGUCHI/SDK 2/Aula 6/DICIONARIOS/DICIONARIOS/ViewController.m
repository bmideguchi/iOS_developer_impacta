/*
 
 Tipos de dados que podem ser salvos como .plist
 
 - Arrays ou dicionários
 - Booleanos
 - NSData (Arquivos baseados em binários)
 - NSDate (Arquivo de data)
 - NSNumber (Arquivo orientado a objeto)
 - NSString
 
 * Além desses dados pode armazenar dados derivados de suas combinações
 
 */

#import "ViewController.h"

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"dados.txt"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", PATH_ARQUIVO);
    
    //Podemos iniciar um dicionário com seus objetos e chaves alocados de forma convencional utilizando o método initWithObjectsAndKeys -> Dessa forma o par é montado valor/chave.

    //Ou podemos iniciar de maneira literal como abaixo, lembrando que desta forma o par é invertido -> chave/valor
    
    self.dicionarioDados = @{@"nome":@"Felipe", @"sobrenome":@"Martins", @"sala":@"23", @"andar":@"15", @"matéria":@"iOS"};
    
    //Gravando o dicionário em disco
    [self.dicionarioDados writeToFile:PATH_ARQUIVO atomically:YES];
    
    //Recuperando os dados
    NSDictionary *dicionarioDadosRecuperados = [NSDictionary dictionaryWithContentsOfFile:PATH_ARQUIVO];
    
    NSLog(@"%@", dicionarioDadosRecuperados);
    
    NSError *erro;
    
    NSString * stringDadosRecuperados = [NSString stringWithContentsOfFile:PATH_ARQUIVO encoding:NSUTF8StringEncoding error:&erro];
    
    NSLog(@"Erro:%@", [erro localizedDescription]);
    
    NSLog(@"\n\n\n\n\n\n %@ \n\n\n\n\n\n", stringDadosRecuperados);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
