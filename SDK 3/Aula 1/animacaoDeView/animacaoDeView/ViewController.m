/*
 ANIMAÇÃO DE VIEW
 
 Para criar uma animação de view temos um método muito usado, o animateWithDuratioN.
 
 Este método utiliza uma estrutura de ˜blocks˜, que é uma espécie de implementação de um método dentro de outro método.
 
 Notação: {ˆ[]};
 
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
    
    //Método de UIView que executa animações
    //animateWithDuration - Determina a duração da animação em segundos (float)
    //Animations - Bloco de código que receberá as transformações a serem executadas

    [UIView animateWithDuration:1.75 animations:^{

    
        //Alterando o frame de nossa viewzinha de forma animada
        self.viewzinha.frame = CGRectMake(10, 10, 30, 30);
        
        //Alterando o BG de forma animada
        self.viewzinha.backgroundColor = [UIColor blueColor];
        
        
    }];
    
    
    //Outro exemplo de animação
    //Delay - tempo de espera para início
    //Options - Controla a "aceleração" do objeto
    //UIViewAnimationOptionCurveEaseIn - Acelera durante a animação
    //UIViewAnimationOptionCurveEaseOut - Desacelera durante a animação
    [UIView animateWithDuration:2.0 delay:1.75 options:UIViewAnimationOptionCurveEaseIn animations:^{
        //Neste caso estamos movendo a label a partir de seu centro
        self.labelUnica.center = CGPointMake(120,40);} completion:^(BOOL finished) {NSLog(@"Acabou!");}];
    
}
@end
