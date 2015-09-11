//
//  ViewController.m
//  botaoCustomizado
//
//  Created by NoiteA on 10/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//Além de fazer alterações pela guia atributos em nosso arquivo .xib, podemos faze-las via codigo:
    
    //Colocando a imagem em nosso botão:
    
    UIImage *imagemNormal = [UIImage imageNamed:@"botao"];
    UIImage *imagemApertado = [UIImage imageNamed:@"botaopressed"];
    
    [self.botaoCustomizado setImage:imagemNormal forState:UIControlStateNormal];
    /*ForState se refere ao estado do botão (normal ou highlighted)*/
    
    //Colocando a imagem para o estado apertado:
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
}

#pragma mark - Métodos de orientação (by Ari)

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    NSLog(@"RODOU!");
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        
        self.botaoCustomizado.enabled = NO;
        
    }
    
    else{
        
        self.botaoCustomizado.enabled = YES;
        
    }
    
    
}


-(NSUInteger)supportedInterfaceOrientations{
    
    return UIInterfaceOrientationMaskAll;
    
}


@end
