//
//  ViewController.m
//  DesafioCABasicAnimation
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

- (IBAction)aumentarTamanho:(UIButton *)sender {
    
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    
    animacao.duration = 1.0;
    
    
    // o byValue acumula a posição da minha layer e continua a partir da animação anterior
    animacao.byValue = [NSValue valueWithCGSize:CGSizeMake(30, 30)];
    
    animacao.removedOnCompletion = NO;
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
    
    
    
}

- (IBAction)diminuirTamanho:(UIButton *)sender {
    
    
    
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    
    animacao.duration = 1.0;
    
    
    // o byValue acumula a posição da minha layer e continua a partir da animação anterior
    animacao.byValue = [NSValue valueWithCGSize:CGSizeMake(-30, -30)];
    
    animacao.removedOnCompletion = NO;
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
    
    
}

- (IBAction)aumentarPosicao:(UIButton *)sender {
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"position"];
    
    animacao.duration = 1.0;

    animacao.byValue = [NSValue valueWithCGPoint:CGPointMake(30, 30)];
    
    animacao.removedOnCompletion = NO;
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];

    
}

- (IBAction)diminuirPosicao:(UIButton *)sender {
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"position"];
    
    animacao.duration = 1.0;
    
    animacao.byValue = [NSValue valueWithCGPoint:CGPointMake(-30, -30)];
    
    animacao.removedOnCompletion = NO;
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
    

}

- (IBAction)aumentarRotacao:(UIButton *)sender {
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    animacao.duration = 1.0;
    
    animacao.removedOnCompletion = NO;
    
    animacao.byValue = [NSNumber numberWithFloat:RADIANOS(45)];
 
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
    
}

- (IBAction)diminuirRotacao:(UIButton *)sender {
    
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    animacao.duration = 1.0;
    
    animacao.removedOnCompletion = NO;
    
    animacao.byValue = [NSNumber numberWithFloat:RADIANOS(-45)];
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
}

- (IBAction)aumentarOpacidade:(UIButton *)sender {
    
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    animacao.duration = 1.0;
    
    animacao.removedOnCompletion = NO;
    
    animacao.byValue = [NSNumber numberWithFloat:0.1];
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];
}

- (IBAction)diminuirOpacidade:(UIButton *)sender {
    
    CABasicAnimation *animacao = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    animacao.duration = 1.0;
    
    animacao.removedOnCompletion = NO;
    
    animacao.byValue = [NSNumber numberWithFloat:-0.1];
    
    animacao.fillMode = kCAFillModeForwards;
    
    [self.imageViewUnica.layer addAnimation:animacao forKey:nil];

}
@end
