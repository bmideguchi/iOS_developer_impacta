//
//  ViewController.m
//  DesafioDesbloqueiaPersonagens
//
//  Created by Felipe Martins on 01/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// setando o slider como zero, inicialmente
    
    self.sliderLiberacoes.value = 0.0;
    
    // Forçando o método
    [self liberarPersonagens:self.sliderLiberacoes];
    
   
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Criamos uma action para nosso slider que tem a função de mostrar ou esconder nossos botões.
- (IBAction)liberarPersonagens:(UISlider *)sender {
    
    // Podemos passar como valor booleano diretamente o resultado de uma expressão. Assim o sistema avaliará se a expressão é verdadeira ou falsa.
    
    
    self.botaoPersonagem1.hidden = sender.value < 0.01;
    self.botaoPersonagem2.hidden = sender.value < 0.2;
    self.botaoPersonagem3.hidden = sender.value < 0.4;
    self.botaoPersonagem4.hidden = sender.value < 0.6;
    self.botaoPersonagem5.hidden = sender.value < 0.8;
    

    
    
    

    /*
     
     // Usando a função abaixo podemos fazer com que apenas um botão fique visível por vez.
    
    if (sender.value > 0.01 && sender.value < 0.2) {
    
        self.botaoPersonagem1.hidden = NO;
    }else{
        
        self.botaoPersonagem1.hidden = YES;
    
    }
    
    
    if (sender.value > 0.2 && sender.value < 0.4) {
        
        self.botaoPersonagem2.hidden = NO;
    }else{
        
        self.botaoPersonagem2.hidden = YES;
        
    }
    
    
    if (sender.value > 0.4 && sender.value < 0.6) {
        
        self.botaoPersonagem3.hidden = NO;
    }else{
        
        self.botaoPersonagem3.hidden = YES;
        
    }
    
    if (sender.value > 0.6 && sender.value < 0.8) {
        
        self.botaoPersonagem4.hidden = NO;
    }else{
        
        self.botaoPersonagem4.hidden = YES;
        
    }
    
    if (sender.value > 0.8 && sender.value < 1.01) {
        
        self.botaoPersonagem5.hidden = NO;
    }else{
        
        self.botaoPersonagem5.hidden = YES;
        
    }

    
    */
    
    
    
}
@end
