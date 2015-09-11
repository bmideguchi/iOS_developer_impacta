
/* UIActionSheet
 
 É uma janela de ação crítica, normalmente utilizada quando o usuário irá apagar algo ou relaizar alguma configuração de grande importância no App
 
 
 */


#import "ViewController.h"

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

- (IBAction)ativarActionSheet:(UIButton *)sender {
    
    // Criando um actin sheet
    UIActionSheet *meuActionSheet = [[UIActionSheet alloc]initWithTitle:@"Deseja realmente apagar todas as memórias da aula de hoje?" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:@"Sim, estou depressivo" otherButtonTitles:@"Não, cliquei errado", nil];
    
    // Title - Título do ActionSheet
    // destuctiveButtonTitle - Gera um botão com o título colocado, o botão de escolha crítica (vermelhinho). (buttonIndex 0).
    
    
    
    // mostrando o actioSheet
    [meuActionSheet showInView:self.view];
    
    
}

// Método que roda quando o usuário clica em um botão
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{

    NSLog(@"clickedButtonAtIndex");
    NSLog(@"buttonIndex: %i", buttonIndex);


}


// Método que roda quando o actionSheet irá sair da tela.
-(void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex{
    
    NSLog(@"willDismissWithButtonIndex");
    NSLog(@"buttonIndex: %i", buttonIndex);
    
}

// Método que roda quando o actionSheet saiu da tela
-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{

    NSLog(@"DidDismissWithButtonIndex");
    NSLog(@"buttonIndex: %i", buttonIndex);

}











@end
