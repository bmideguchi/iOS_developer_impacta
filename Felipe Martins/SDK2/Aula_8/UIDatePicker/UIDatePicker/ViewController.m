
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // limpando o texto da nossa label
    self.labelData.text = nil;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrar:(UIButton *)sender {
    
    // Criando uma NSDate para receber os dados do DatePicker
    NSDate *dataDoPicker = [[NSDate alloc]init];
    
    // Colocando a data do picker em nosso NSDate.
    dataDoPicker = self.meuDatePicker.date;
    
    // Criando um NSDateFormatter para formatar nossa data
    
    NSDateFormatter *formatador = [[NSDateFormatter alloc]init];
    
    // Setando como formatação o estilo com o maior número de informações
    
    [formatador setDateStyle:NSDateFormatterFullStyle];
    
    // Mostrando na label em Português
    
    NSLocale *localizacao = [[NSLocale alloc]initWithLocaleIdentifier:@"pt_BR"];
    
    [formatador setLocale:localizacao];
    
    self.labelData.text = [NSString stringWithFormat:@"%@", [formatador stringFromDate:dataDoPicker]];
    
    
    
    
    
    
    
    
    
    
    
    
    
}

- (IBAction)trocouValorDatePicker:(UIDatePicker *)sender {
    
    [self mostrar:nil];
    
    NSLog(@"Funfou!!!");
    
}
@end
