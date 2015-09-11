
#import "ViewController.h"


#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"arrayLembretes.plist"]

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSLog(@"Documents: %@", DOCUMENTS);
    
    // Travando a textView
    self.textViewMostraLembretes.editable = NO;
    
    self.textFieldNovoLembrete.delegate = self;
    
    // Iniciando o array lembretes
    self.arrayLembretes = [[NSMutableArray alloc]init];
    
    
    // Criando um gerenciador de arquivo
    NSFileManager *gerenciador = [NSFileManager defaultManager];
    
    
    // Verificamos se o arquivo gravado em disco já existe.
    if ([gerenciador fileExistsAtPath:PATH_ARQUIVO]) {
        // Caso o arquivo exista
        
        // Iniciamos o array com os dados salvos
        self.arrayLembretes = [[NSMutableArray alloc]initWithContentsOfFile:PATH_ARQUIVO];
        
        //Mostramos em nossa textView os dados salvos
        self.textViewMostraLembretes.text = [self.arrayLembretes componentsJoinedByString:@"\n\n"];
        
        
    }else{
        // caso não exista colocamos um texto padrão em nossa textView
    
        self.textViewMostraLembretes.text = @"Não há lembretes salvos";
    
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Métodos de UITextFieldDelegate


-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    // Verificamos se há texto na textField
    if (self.textFieldNovoLembrete.text.length > 0) {
        // Caso haja texto
        
       // Criamos uma stringPara receber o que foi digitado na textField
    NSString *dado = [NSString stringWithFormat:@"%@", self.textFieldNovoLembrete.text];
    
        // Armazenamos em nosso array
        [self.arrayLembretes addObject:dado];
        
        // Gravamos o array
        
        [self.arrayLembretes writeToFile:PATH_ARQUIVO atomically:YES];
        
        // Mostramos os componentes do array separados por quebra de linha na nossa textView
        
        self.textViewMostraLembretes.text = [self.arrayLembretes componentsJoinedByString:@"\n\n"];
        
        // Limpamos o texto de nossa textField
        self.textFieldNovoLembrete.text = nil;
    }
    


    return YES;
}





@end
