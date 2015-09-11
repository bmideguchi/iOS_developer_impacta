//
//  ViewController.m
//  UIGestureReconizer
//
//  Created by Felipe Martins on 07/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // Criando um gesture do tipo TAP (tocar na tela).
    UITapGestureRecognizer *gestoTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(disparouTap:)];
    
    // Podemos também controlar a quantidade de toques necessários para disparar nosso gesture
    gestoTap.numberOfTapsRequired = 2;
    
    
    // Adicionando o tap a nossa viewzinha
    [self.viewzinha addGestureRecognizer:gestoTap];
    
//----------------------------------------------------------------------
    
    
    // Criando um gesture do tipo SWIPE (Deslizar o dedo com certa rapidez para algum sentido)
    
    UISwipeGestureRecognizer *gestoSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(disparouSwipe:)];
    
    // Podemos também controlar a direção do swipe
    
    gestoSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    
    [self.viewzinha addGestureRecognizer:gestoSwipe];
    
    
    
//----------------------------------------------------------------------
    
    
    // Criando um gesture do tipo PAN  (Arrastar o dedo na tela)
    
    UIPanGestureRecognizer *gestoPan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(disparouPan:)];
    
    
    [self.viewzinha addGestureRecognizer:gestoPan];
    
//----------------------------------------------------------------------
    
    
    // Criando um gesture do tipo LONGPRESS
    
    UILongPressGestureRecognizer *gestoLongPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(disparouLongPress:)];
    
    // propriedade que controla o tempo para o disparo
    gestoLongPress.minimumPressDuration = 3.0;
    
    // Adicionando o gesture do tipo longPress a nossa viewzinha
    [self.viewzinha addGestureRecognizer:gestoLongPress];
    
//------------------------------------------------------
    
    
    // Criando um gesture do tipo ROTATION
    
    UIRotationGestureRecognizer *gestoRotation = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(disparouRotation:)];
    
    
    
    [self.viewzinha addGestureRecognizer:gestoRotation];
    
//------------------------------------------------------
    
    // Criando um gesture do tipo PINCH
    
    UIPinchGestureRecognizer *gestoPinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(disparouPinch:)];
    
    [self.viewzinha addGestureRecognizer:gestoPinch];
    
    
//------------------------------------------------------
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Minhas Ações


-(void)disparouTap:(UITapGestureRecognizer *)gestoTap{

    NSLog(@"O usuário Tapou!");


}

-(void)disparouSwipe:(UISwipeGestureRecognizer *)gestoSwipe{


    NSLog(@"O usuário SWIPOU!");


}


-(void)disparouPan:(UIPanGestureRecognizer *)gestoPan{


    // Resgatando a posição do toque
    CGPoint posicaoToque = [gestoPan locationInView:self.view];
    
    // Mostrando a posição
    
    NSLog(@"%@", NSStringFromCGPoint(posicaoToque));
    
    //self.viewzinha.center = posicaoToque;


}


-(void)disparouLongPress:(UILongPressGestureRecognizer *)gestoLongPress{

    // Um gesture pode ser chamado várias vezes quando passa por estados diferentes (began, ended...).
    // Podemos verificar o estado do gesture para evitar estes disparp múltiplo
    
    if (gestoLongPress.state == UIGestureRecognizerStateBegan) {
        
          NSLog(@"O usuário disparou o LongPress");
        
    }

  



}


-(void)disparouRotation:(UIRotationGestureRecognizer *)gestoRotation{


    NSLog(@"Rodou!!! (Rotation)");

    gestoRotation.view.transform = CGAffineTransformRotate(gestoRotation.view.transform, gestoRotation.rotation);
    
    gestoRotation.rotation = 0;
    
    
    
}




-(void)disparouPinch:(UIPinchGestureRecognizer *)gestoPinch{


    gestoPinch.view.transform = CGAffineTransformScale(gestoPinch.view.transform, gestoPinch.scale, gestoPinch.scale);
    
    gestoPinch.scale = 1;
    
    NSLog(@"Pinch na Tela");


}


@end
