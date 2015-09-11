

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Ligando o delegate da minha textField
    self.textFieldLembrete.delegate = self;
    
    
    // Limpando a textView e travando a edição
    self.textViewUnica.text = nil;
    self.textViewUnica.editable = NO;
    
    
    
    // Criando o caminho do arquivo
    
    // criando o camimho para a pasta HOME do nosso app.
    self.caminhoParaHome = NSHomeDirectory();
   // NSLog(@"caminho para a pasta home: %@", self.caminhoParaHome);
    
    
    // Concatenando o caminho que temos do HOME para a nossa pasta Documents
    self.caminhoParaDocuments = [self.caminhoParaHome stringByAppendingPathComponent:@"Documents"];
   // NSLog(@"caminho para  a pasta Documents: %@",self.caminhoParaDocuments);
    
    // Criando o nome do arquivo a ser gerado no endereço documents
    self.caminhoParaMeuArquivoSalvo = [self.caminhoParaDocuments stringByAppendingPathComponent:@"meuTexto.txt"];
    NSLog(@"Caminho para o arquivo dados: %@", self.caminhoParaMeuArquivoSalvo);
 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas ações

- (IBAction)exibirLembrete:(UIButton *)sender {


    // Criando um gerenciador de arquivo
    NSFileManager *gerenciador = [NSFileManager defaultManager];
    
    
    
    
    //Verificando se o arquivo existe no caminho.
    if ([gerenciador fileExistsAtPath:self.caminhoParaMeuArquivoSalvo]) {
        // Caso o arquivo exista
        
        // A minha variável lembrete recebe o conteudo do arquivo salvo
        self.meuLembrete = [NSString stringWithContentsOfFile:self.caminhoParaMeuArquivoSalvo encoding:NSUTF8StringEncoding error:nil];
        
        //Colocamos o texto recuperado em nossa textView
        self.textViewUnica.text = self.meuLembrete;
        
    }else{
        // caso o arquivo não exista
    
        // Exibimos uma mensagem padrão avisando que não há lembretes
        self.textViewUnica.text = @"Sem lembrete";
    
    }
    
    
    

}



#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    // Verificamos se a textField é a textFieldLembrete
    if ([textField isEqual:self.textFieldLembrete]) {
        
        // Caso haja algo escrioto na textField
        if (self.textFieldLembrete.text.length > 0) {
            
            // colocamos o que foi escrito em nossa variável que guarda o lembrete
            self.meuLembrete = self.textFieldLembrete.text;
            
            // Criamos um arquivo (.txt) a partir do texto que gravamos.
            
            [self.meuLembrete writeToFile:self.caminhoParaMeuArquivoSalvo atomically:YES encoding:NSUTF8StringEncoding error:nil];
            
            // Limpamos a textField e a textView
            self.textFieldLembrete.text = nil;
            self.textViewUnica.text = nil;
            
            //Tirando o teclado
            [self.textFieldLembrete resignFirstResponder];
            
        }
        
        
        
    }
    

    return YES;
}

// metodo que roda sempre que o usuário toca na tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    // caso isso ocorra, tiramos o foco da nossa textField e o teclado sai da tela
    [self.textFieldLembrete resignFirstResponder];


}




@end
