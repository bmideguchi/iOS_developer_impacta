//
//  ViewController.m
//  DesafioTimer
//
//  Created by Felipe Martins on 15/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

// botao que dispara nosso timer
- (IBAction)iniciar:(UIButton *)sender {

    // Iniciando o contador com o valor escolhido pelo usuário
    self.contador = self.meuDatePicker.countDownDuration;
    
    // Iniciando o nosso temporizador
    self.temporizador = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(gerenciarContagem) userInfo:nil repeats:YES];

    // Fazemos o botão desaparecer
    self.botaoIniciar.hidden = YES;

}


-(void)gerenciarContagem{
    
    // Decrementamos o contador.
    self.contador--;
    
    // Exibimos o contador na label
    self.labelContagem.text = [NSString stringWithFormat:@"%i", self.contador];
    
    // Verificamos se o contador é == 0.
    if (self.contador == 0) {
        // Se for igual a 0 (condição verdadeira)
        
        // Invalidamos nosso temporizador.
        [self.temporizador invalidate];
        
        // Fazemos o botão aparecer
        self.botaoIniciar.hidden = NO;
        
    }
    

}





@end
