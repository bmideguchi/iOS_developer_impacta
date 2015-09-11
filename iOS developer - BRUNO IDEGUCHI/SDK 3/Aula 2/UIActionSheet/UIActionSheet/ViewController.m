/*
 
 UIActionSheet
 
 É uma janela de ação crítica, normalmente utilizada quando o usuário irá apagar ou realizar alguma configuração de grande importância no app
 
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
    
    UIActionSheet *meuActionSheet = [[UIActionSheet alloc]initWithTitle:@"Deseja realmente apagar todas as memórias da aula de hoje?" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:@"Sim, estou depressivo" otherButtonTitles:@"Não, cliquei errado!", nil];
    
    [meuActionSheet showInView:self.view];
}


#pragma mark - Métodos de UIActionSheetDelegate (Valem também para o alert)


//Método que roda quando o usuário clica em um botão
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"ClickedButtonAtIndex");
    NSLog(@"buttonIndex: %i", buttonIndex);
}

//Método que rofa quando o action sheet irá descer
-(void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"ClickedWillDismissWithButtonIndedx");
    NSLog(@"buttonIndex: %i", buttonIndex);
}

//Método que roda quando o action sheet já desceu
-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"ClickedDidDismissWithButtonIndex");
    NSLog(@"buttonIndex: %i", buttonIndex);
}




@end
