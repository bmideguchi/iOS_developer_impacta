//


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


#pragma mark - Minhas Ações

- (IBAction)animar:(UIButton *)sender {
    
    
    // Alocamos e iniciamos o nosso timer
    self.temporizador = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(metodoQueCriaAnimacao) userInfo:nil repeats:YES];
    

}

-(void)metodoQueCriaAnimacao{

    
    // Criamos um método que anima os elementos de View
    [UIView animateWithDuration:0.25 animations:^{
        // tudo que colocarmos aqui dentro será animado
        
        // Criamos variáveis aleatórias para cada cor
        
        float red = arc4random()%255;
        float green = arc4random()%255;
        float blue = arc4random()%255;
        
        
        // Setamos o backGround a partir das variáveis sorteadas
        
        self.viewzinha.backgroundColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
        
        // Criando variáveis aleatórias para a posição
        float x = arc4random()%320;
        float y = arc4random()%460;
        
        // Setando uma nova posicão em nossa viewzinha a partir dos números sorteados
        self.viewzinha.center = CGPointMake(x, y);
        
        
        // Criando variáveis aleatórias para o tamanhho
        float largura = arc4random()%100;
        float altura = arc4random()%100;
        
        // Setando um novo tamanho.
        
        self.viewzinha.bounds = CGRectMake(0, 0, largura, altura);
        
        
        
    }];
    
    
    
    

}


// Método disparado quando o usuário interage com a tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    // Quando o usuário tocar na tela, paramos o temporizador e consequentemente a animação é interrompida.

    [self.temporizador invalidate];


}



@end
