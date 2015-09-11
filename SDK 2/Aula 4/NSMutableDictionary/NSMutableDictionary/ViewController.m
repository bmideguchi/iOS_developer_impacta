
/* NSMutableDictionary
 
 NSMutableDictionary é uma subclasse de NSDictionary e por consequencia herda seus métodos e propriedades.
 
 (Reflexão) - "Você herda as características de seu pai, mas seu pai não herda de você" (Felipe Lispector).
 
 Além de possuir os métodos herdados do papai (NSDictionary), ele possui métodos para a inserção e remoção de objetos o que permite que ele seja mutável.
 
 
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criação de um NSMutableDictionary
    
    NSMutableDictionary *dicionarioMutavel = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Felipe",@"nome", nil];
    
    NSLog(@"%@", dicionarioMutavel);
    
    
    // Adicionando um item no NSMutableDictionary
    
    [dicionarioMutavel setValue:@"Verdes" forKey:@"olhos"];
    
    NSLog(@"%@", dicionarioMutavel);
    
    // Removendo um item baseado em sua key
    
    [dicionarioMutavel removeObjectForKey:@"olhos"];
    
    NSLog(@"%@", dicionarioMutavel);
    
    // Removendo todos os itens  do NSMutableDictionary
    
    [dicionarioMutavel removeAllObjects];
    NSLog(@"%@", dicionarioMutavel);
    
    
      
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
