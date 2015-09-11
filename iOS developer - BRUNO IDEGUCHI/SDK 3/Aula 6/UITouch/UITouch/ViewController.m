//
//  ViewController.m
//  UITouch
//
//  Created by NoiteA on 31/07/13.
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
    
    //Habilitando a interação multitoque
    self.view.multipleTouchEnabled = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Métodos de UITouch

//Método que roda quando o usuário toca na tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.labelStatus.text = @"touchesBegan";
    
    //touches: Coleção que contém os toques atuais
    //Criando um elemento de UITouch
    UITouch *toque = [touches anyObject];
    
    //Mostrando a view tocada
    NSLog(@"Objeto tocado:%@", toque.view);
    
    //Mostrando a quantidade de dedos
    NSLog(@"Quantidade de toques: %i", [touches count]);
    
    //Criando um CGPoint para receber a posição tocada na view
    CGPoint posicaoToque = [toque locationInView:self.view];
    
    //Mostrando a posição tocada
    //Como um CGPoint não é um dado orientado a objeto, e sim uma estrutura em Ansi-C, usamos uma função para exibí-lo como string.
    NSLog(@"Posição%@", NSStringFromCGPoint(posicaoToque));
    
}





@end
