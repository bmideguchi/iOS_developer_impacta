//
//  ViewController.m
//  UITouch
//
//  Created by Felipe Martins on 31/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // Alguns objetos em nossa View por padrão tem a interação desabilitada, para habilitar acessamos a propriedade UserInteracionEnable
    
    // Habilitando a interação da nossa label
    self.labelStatus.userInteractionEnabled = YES;
    
    
    
    // Habilitando a interação múltipla
    
    self.view.multipleTouchEnabled = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Métodos de UITouch


// Método que roda quando o usuário toca na tela
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.labelStatus.text = @"touchesBegan";

    // touches - coleção que contém os toques atuais

    
    // Criando um elemento de UITouch
    
    UITouch *toque = [touches anyObject];
    
    // Mostrando a view tocada.
    
  //  NSLog(@"Objeto Tocado: %@", toque.view);
    
    
    
    // Mostrando quandos dedos o usuário colocou na Tela
    
    //NSLog(@"Quantidade de toques: %i", [touches count]);
    
    
    
    
    // Criando um CGPoint para receber a posição tocada na view
    
    CGPoint posicaoToque = [toque locationInView:self.view];
    
    // Mostrando a posição tocada na View.
    // Como um CGPoint não é um dado orientado a objeto, e sim uma estrutura em Ansi-C, usamos uma função paea exibí-lo como string
    
    
    NSLog(@"Posição: %@", NSStringFromCGPoint(posicaoToque));
    
    
    // Verificando qual View foi tocada
    
    if ([toque.view isEqual:self.viewzinha]) {
        
        
        self.labelStatus.text = @"viewzinha";
    }

   
}


// Método roda quando o usuário termina o toque (tira o dedo da tela)
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

    self.labelStatus.text = @"touchesEnded";




}

// Método que roda quando o usuário move o dedo na tela
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

self.labelStatus.text = @"touchesMoved";


}



@end
