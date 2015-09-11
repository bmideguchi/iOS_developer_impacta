//
//  ViewController.m
//  CABasicAnimation
//
//  Created by Felipe Martins on 19/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

#define RADIANOS(graus)((graus * M_PI)/180)

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
    
    
    // --------------- Animação de opacidadade ----------
    
/*
    
  // Para animar propriedades de layer devemos usar CABasicAnimation lembrando de importar o QuartzCore
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    
    // Propriedade que define a animação
    animacao.duration = 1.0;
    
    // Propriedade que define o valor inicial da animação
    animacao.fromValue = [NSNumber numberWithFloat:1.0];
    
    // Propriedade que define o valor final da animação
    animacao.toValue = [NSNumber numberWithFloat:0.0];
    
    
    // Propriedade que define se aanimação será ou não mantida em memória
    
    // removedOnCompletion = NO -> Animação não será tirada de memória ao terminar de ser executada.
    // removedOnCompletion = YES -> Animação será tirada de memória ao terminar de ser executada
    animacao.removedOnCompletion = NO;
    
    
    // Definição de qual será a posição final da animação
    animacao.fillMode = kCAFillModeForwards;
    //animacao.fillMode = kCAFillModeBackwards;
    
    
    // Método que adiciona uma animação a layer
    [self.viewzinha.layer addAnimation:animacao forKey:nil];
    
    
    */
    
    
    // --------------- Animação de Posição --------------
    
/*
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"position"];
    
    animacao.duration = 1.0;
    
    // Para evitar o "Pulinho" na animação precisamos acrescentar metade do tamanho da viewzinha nas cordenadas para calcularmos o centro, pois a layer é animada a partir do centro (chamada position neste caso)
    
    
    animacao.fromValue = [NSValue valueWithCGPoint:CGPointMake(109 + (self.viewzinha.bounds.size.width/2), 122 + (self.viewzinha.bounds.size.height/2))];

    
    animacao.toValue = [NSValue valueWithCGPoint:CGPointMake(40, 300)];
    
    animacao.removedOnCompletion = NO;
    
    animacao.fillMode = kCAFillModeForwards;
    
    
    // Propriedade que controla o efeito da aceleracão
    animacao.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    
    [self.viewzinha.layer addAnimation:animacao forKey:nil];
    
    
    */
    
   // ----------------- Animação de tamanho -----------
    
    /*
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    
    animacao.duration = 1.0;
    
    animacao.fromValue = [NSValue valueWithCGSize:CGSizeMake(120, 120)];
    animacao.toValue = [NSValue valueWithCGSize:CGSizeMake(250, 300)];
    
    animacao.removedOnCompletion = NO;
    animacao.fillMode = kCAFillModeForwards;
    
    animacao.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    [self.viewzinha.layer addAnimation:animacao forKey:nil];
    
    */
    
// --------------------- Animação de Rotação ------------
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    animacao.duration = 1.0;
    
    animacao.byValue = [NSNumber numberWithFloat:RADIANOS(90)];
    
    animacao.removedOnCompletion = NO;
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.viewzinha.layer addAnimation:animacao forKey:nil];
    
    
    
    
}
@end
