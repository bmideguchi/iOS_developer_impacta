
/*
    Tipos de dados que podem ser salvos como .plist
 
    - Arrays ou Dicionarios
 
 -Booleanos
 -NSData (Arquivos baseados em binário)
 -NSDate (Arquivo de data)
 -NSNumber (Número orientado a objeto)
 -NSString (Dados de texto)
 
 *Além destes podemos armazenar dados derivados de suas combinações
 
 */
#import "ViewController.h"

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"dicionarioSalvo.plist"]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"%@", PATH_ARQUIVO);
    
    // Podemos iniciar um dicionário com seus objetos e chaves alocados de forma convencional utilizando o metodo initWithObjectsAndKeys -> Desta forma o par é montado "valor/chave".
    
    // Ou podemos iniciar da maneira literal como abaixo, lembrando que desta forma o par é invertido -> "chave/valor"
    
    
    self.dicionarioDados = @{@"nome":@"Felipe", @"sobrenome":@"Martins", @"sala":@"23", @"andar":@"15", @"materia": @"iOS"};
    
    // gravando o dicionaro em disco
    
    [self.dicionarioDados writeToFile:PATH_ARQUIVO atomically:YES];
    
    // Recuperando os dados salvos
    
    NSDictionary *dicionarioDadosRecuperados = [NSDictionary dictionaryWithContentsOfFile:PATH_ARQUIVO];
    
    NSLog(@"%@", dicionarioDadosRecuperados);
    
    NSError *erro;
    NSString *stringDadosRecuperados = [NSString stringWithContentsOfFile:PATH_ARQUIVO encoding:NSUTF8StringEncoding error:&erro];
    
    
    NSLog(@"Erro: %@", [erro localizedDescription]);
    
    
    NSLog(@"\n\n\n\n\n\n\n %@ \n\n\n\n\n\n\n", stringDadosRecuperados);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
