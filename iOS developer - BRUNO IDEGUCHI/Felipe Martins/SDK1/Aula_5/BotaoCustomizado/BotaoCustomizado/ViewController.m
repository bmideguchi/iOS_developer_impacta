//
//  ViewController.m
//  BotaoCustomizado
//
//  Created by Felipe Martins on 10/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Além de fazer alterações por a guia atributs em nosso arquivo .xib, podemos fazê-las via código
    
    
    // Colocando a imagem em nosso botão
    UIImage * imagemNormal = [UIImage imageNamed:@"botao"];
    
    
    // forState se refere ao estado do botão. normal (normal) apertado que é (highlighted)
    [self.botaoCustomizado setImage:imagemNormal forState:UIControlStateNormal];
    
    
    // Colocando a imagem para o estado "apertado"
    UIImage *imagemApertado = [UIImage imageNamed:@"botaoPressed"];

    [self.botaoCustomizado setImage:imagemApertado forState:UIControlStateHighlighted];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_botaoCustomizado release];
    [super dealloc];
}
- (IBAction)clicarBotaoCustomizado:(UIButton *)sender {
    
    NSLog(@"Clicou botão Customizado");
    
}


#pragma mark - Métodos de Orientação (By Ari)


-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{

    // Se meu app estiver de lado
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        
        // enabled - Propriedade que habilita ou desabilita um botão
        self.botaoCustomizado.enabled = NO;
        
    }else{
        // Se o app estiver de pé
        
        self.botaoCustomizado.enabled = YES;
    
    
    }

    NSLog(@"Rodou! (By Ari)");


}








-(NSUInteger)supportedInterfaceOrientations{


    return UIInterfaceOrientationMaskAll;

}





@end
