#import "ViewController.h"

// Criando uma constante para o caminho do arquivo

#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"dados.txt"]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", DOCUMENTS);
	
     // Iniciando o array com as cores
    
    self.arrayCores = [[NSArray alloc]initWithObjects:[UIColor whiteColor],[UIColor blackColor],[UIColor blueColor], [UIColor yellowColor], [UIColor greenColor],nil];
    
    // Iniciando uma varivável escolha com a cor recuperada.
    
    NSString *escolhaRecuperada = [NSString stringWithContentsOfFile:PATH_ARQUIVO encoding:NSUTF8StringEncoding error:nil];
    
    // Convertendo a snringEscolha em uma inteira
    self.escolha = [escolhaRecuperada intValue];
    
    //Colocando o BackGroung com a escolha, baseado no array
    self.view.backgroundColor = [self.arrayCores objectAtIndex:self.escolha];
    
    // Setando o índice do segmented
    self.segmentedCores.selectedSegmentIndex = self.escolha;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)escolherCorDeFundo:(UISegmentedControl *)sender {
    
    
    // Iniciando um gerenciador de arquivos
    NSFileManager *gerenciador = [NSFileManager defaultManager];
    
    // Caso o arquivo exista
    if ([gerenciador fileExistsAtPath:PATH_ARQUIVO]) {
        
        
        // Setamos a cor de fundo da tela baseado no índice do array e da seleção
        self.view.backgroundColor = [self.arrayCores objectAtIndex:sender.selectedSegmentIndex];
        
    }else{
        // Caso a cor não exista
    
        // Setamos a cor branca
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    // Criando uma string que recebe o segmento escolhido
    NSString *stringEscolha = [NSString stringWithFormat:@"%i", sender.selectedSegmentIndex];
    
    // gravando esta string em disco
    [stringEscolha writeToFile:PATH_ARQUIVO atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    
    
}
@end
