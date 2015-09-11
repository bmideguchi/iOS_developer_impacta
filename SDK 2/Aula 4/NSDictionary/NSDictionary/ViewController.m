
/* NSDictionary
 
 Um Dicionario é semelhante a um array com a diferença que ela não armazena apenas valores, mas também chaves. O que também é conhecido como par do registro.
 
 Um dicionario nada mais é que uma coleção com chaves associativas que formam o par key-value.
 
 Um NSDictionary assim como um NSArray é Imutável!
 
 
 */


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando um NSDictionary já com os objetos
    
    NSDictionary *dicionario = [[NSDictionary alloc]initWithObjectsAndKeys:@"Felipe",@"nome",@"Martins",@"sobrenome",@"iOS", @"treinamento", nil];
    
    // Resgatar a contagem do dicionario
    
    NSLog(@"%i", [dicionario count]);
    
    
    NSLog(@"---------------------------------------------------------------");
    
    // Resgatando um elemento através de sua key
    NSLog(@"%@", [dicionario objectForKey:@"nome"]);
    NSLog(@"%@", [dicionario objectForKey:@"sobrenome"]);
    NSLog(@"%@", [dicionario objectForKey:@"treinamento"]);
    
    
    NSLog(@"---------------------------------------------------------------");
    
    // Resgatando todos os valores
    NSLog(@"Todos os valores: %@", [dicionario allValues]);
    
    // Resgatando todas as chaves
    NSLog(@"Todas as chaves %@", [dicionario  allKeys]);
    
    // Resgatando o objeto dicionario por inteiro
    NSLog(@"O objeto dicionario por completo %@", dicionario);
    
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
