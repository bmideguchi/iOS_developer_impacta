

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // Propriedade que permite a alteração do tamanho interno da nossa scrollView.
    self.minhaScrollView.contentSize = CGSizeMake(320, 700);
    
    
    
    // Para inserir um item em nossa scrollView abaixo do que está em tela padrão (fora do limite da resolução normal), fazemos a inserção via código.
    
    UILabel *labelFeitaViaCodigo = [[UILabel alloc]initWithFrame:CGRectMake(10, 500, 200, 100)];
    labelFeitaViaCodigo.backgroundColor = [UIColor orangeColor];
    labelFeitaViaCodigo.text = @"Fora da visão padrão";
    labelFeitaViaCodigo.textAlignment = NSTextAlignmentCenter;
    
    // Adicionando a nossa label na scrollView
    [self.minhaScrollView addSubview:labelFeitaViaCodigo];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
