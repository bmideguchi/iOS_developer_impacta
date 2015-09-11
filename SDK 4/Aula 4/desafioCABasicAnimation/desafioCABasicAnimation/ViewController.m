//
//  ViewController.m
//  desafioCABasicAnimation
//
//  Created by NoiteA on 19/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.variacao = 200;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tamanhoMais:(UIButton *)sender {
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"size"];
    
    //Animando a altura
    animacao.fromValue = [NSNumber numberWithFloat:self.imageViewUnica.image.size.height];
    animacao.toValue = [NSNumber numberWithFloat:self.imageViewUnica.image.size.height+self.variacao];
    
    //Propriedade que define se a animação será ou não mantida em memória
    animacao.removedOnCompletion = NO;
    
    //Definição de qual será a posição final da animação
    animacao.fillMode = kCAFillModeForwards;
    
    //Método que adiciona uma animação a layer
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
    
    NSLog(@"%f", self.imageViewUnica.image.size.height);
    
}

- (IBAction)tamanhoMenos:(UIButton *)sender {
}

- (IBAction)posicaoMais:(UIButton *)sender {
}

- (IBAction)posicaoMenos:(UIButton *)sender {
}

- (IBAction)rotacaoMais:(UIButton *)sender {
}

- (IBAction)rotacaoMenos:(UIButton *)sender {
}

- (IBAction)opacidadeMais:(UIButton *)sender {
}

- (IBAction)opacidadeMenos:(UIButton *)sender {
}
@end
