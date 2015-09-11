/* Animação de  View
 
 Para criar uma animação de view temo um método muito usado, o animateWithDuration.
 Este método utiliza uma estrutura de blocks, que é uma espécie de implementação de um método dentro de outro
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

- (IBAction)animar:(UIButton *)sender {
    
    // animateWithDuration - Determina a  duração da animação em segundos (float)
    //animations - Bloco de códido que receberá as tranformações a serem executadas
    
    // Método de UIView que executa animações
    [UIView animateWithDuration: 1.75 animations:^{
        
        // Alterando o frame (Posição e tamanho) de nossa viewzinha de uma forma animada
        self.viewzinha.frame = CGRectMake(10, 10, 30, 30);
        
        // Alterando o background de maneira animada
        self.viewzinha.backgroundColor = [UIColor blueColor];
        
        
    }];
    
    
    //animateWithDuration - Determina a  duração da animação em segundos (float)
    // delay - Determina o tempo de espera para início
    // Options - Controla a "aceleração"do objeto
        // UIViewAnimationOptionCurveEaseIn - Acelera durante a animação
        // UIViewAnimationOptionCurveEaseOut = Desacelera durante a animação
    //animations - Bloco de código onde a animação é criada
    // completion - Bloco que é executado quando a animação termina
    
    
    [UIView animateWithDuration:2.0 delay:1.75 options:UIViewAnimationOptionCurveEaseOut animations:^{
        // O que colocarmos dentro deste bloco, será executado como animação
        
        
        // Neste caso estamos movendo a label a partir de seu centro.
        
        self.labelUnica.center = CGPointMake(120, 40);
        
        
    } completion:^(BOOL finished) {
       
        // Este bloco é executado quando a nossa animação termina
        NSLog(@"Acabou!!!! =)");
        
        
    }];
    
    
}
@end
