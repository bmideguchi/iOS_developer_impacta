/* NSDate e NSDateFormatter
 
 NSDate - Classe responsável por gerenciar um objeto de data - Retorna um objeto Bruto.
 
 NSDateFormatter - Classe responsável por formatar um objeto de data
 
 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando um objeto do tipo NSDate
    NSDate *dataAtual = [[NSDate alloc]init];
    
    // Mostrando a data atual de forma bruta
    NSLog(@"Data: %@", dataAtual);
    
    NSLog(@"--------------------------------------------------------------------------");
    
    // Temos uma classe padrão para gerenciar a formatação de um objeto NSDate. O NSDateFormatter
    
    // Criando um objeto do tipo NSDateFormatter
    NSDateFormatter *formatador = [[NSDateFormatter alloc]init];
    
    // Setando um style em nosso objeto formatador para exibição.
    
    // Formato FullStyle
    [formatador setDateStyle:NSDateFormatterFullStyle];
    // Exibindo os dados já com a formatação
    NSLog(@"Data com FullStyle: %@", [formatador stringFromDate:dataAtual]);
    
    // Alterando para shortStyle
    [formatador setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"Data com ShortStyle: %@", [formatador stringFromDate:dataAtual]);
    
    // Alterando o style para mediumStyle
    [formatador setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"Data com MediumStyle: %@", [formatador stringFromDate:dataAtual]);
    
    
    
    NSLog(@"------------------------------------------------------");
    
    // Podemos criar nosso próprio estilo de formatação.
    
    // Setando um estilo personalizado no formatador
    [formatador setDateFormat:@"dd/MM/yyyy"];
    NSLog(@"Meu próprio estilo: %@", [formatador stringFromDate:dataAtual]);
    
    
    // Criando um locale para mostrar a data com a formatação baseada em uma localidade
    
    NSLocale *localizacao = [[NSLocale alloc]initWithLocaleIdentifier:@"pt_BR"];
    
    // setando o locale em nosso formatador
    [formatador setLocale:localizacao];
    [formatador setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"Data formatada Brasil: %@", [formatador stringFromDate:dataAtual]);
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
