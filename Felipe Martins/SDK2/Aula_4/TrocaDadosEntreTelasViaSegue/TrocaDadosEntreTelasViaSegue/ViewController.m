
#import "ViewController.h"

// Para termos acesso a nossa outra tela precisamos importar o documento.
#import "Tela2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

// Método que é chamado toda vez que um segue será executado.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    //Verificando se o segue é o que queremos pelo identifier (identificador)
    if ([segue.identifier isEqualToString:@"segueTela2"]) {
       
        // Criamos uma instancia da segunda tela, já que a mesma é uma classe podemos criar um objeto da mesma.
        
        // Criamos esta instancia (variável) e avisamos o sistema que a mesma é uma tela de destino a partir de um segue.
        
        Tela2ViewController *segundaTela = (Tela2ViewController *)segue.destinationViewController;
        
        // Tendo o objeto de uma classe podemos acessar suas propriedades
        // Salvando as informações nas variáveis da outra tela
        
        segundaTela.nomePrimeiraTela = self.textFieldNome.text;
        segundaTela.sobrenomePrimeiraTela = self.textFieldSobrenome.text;
        
        
        
        
        
    }





}






@end
