//
//  ViewController.m
//  CABasicAnimation
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animar:(UIButton *)sender {
    
    
    //------------------------------------  ANIMAÇÃO DE OPACIDADE  ------------------------------------//
    
    //Para animar propriedades de layer devemos usar CABasicAnimation lembrando de importar o QuartzCore
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    //Propriedade que define a animação
    animacao.duration = 1.0;
    
    //Propriedade que define o valor inicial da animação
    animacao.fromValue = [NSNumber numberWithFloat:1.0];
    
    
    //Propriedade que define o valor final da animação
    animacao.toValue = [NSNumber numberWithFloat:0.0];
    
    //Propriedade que define se a animação será ou não mantida em memória
    animacao.removedOnCompletion = NO;
    
    //Definição de qual será a posição final da animação
    //kCAFillModeBackwards -> Primeiro frame será a posição final
    //kCAFillModeForwards -> Último frame será a posição final
    animacao.fillMode = kCAFillModeForwards;
    
    //Método que adiciona uma animação a layer
    [self.viewzinha.layer addAnimation:animacao forKey:nil];
    
}

- (IBAction)animar2:(UIButton *)sender {
    
    //------------------------------------  ANIMAÇÃO DE POSIÇÃO  ------------------------------------//
    
    CABasicAnimation *animacao2 = [CABasicAnimation animationWithKeyPath:@"position"];
    animacao2.duration = 1.0;
    animacao2.fromValue = [NSValue valueWithCGPoint:CGPointMake(160,160)];
    animacao2.toValue = [NSValue valueWithCGPoint:CGPointMake(40,300)];
    animacao2.removedOnCompletion = NO;
    animacao2.fillMode = kCAFillModeForwards;
    [self.viewzinha.layer addAnimation:animacao2 forKey:nil];
    
}
@end
