//
//  ViewController.m
//  IndicadoresDeAtividade
//
//  Created by Felipe Martins on 24/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Zerando o noss progress
    self.meuProgress.progress = 0.0;
    
    // propriedade que esconde o activity quando o mesmo não esta animando
    self.meuActivityIndicator.hidesWhenStopped = YES;
    
    
	// Definindo o limite para o stepper.
    
    self.meuStepper.minimumValue = 0.0;
    self.meuStepper.maximumValue = 10.0;
    
    
    // forçando o método do switch que controla a animação do activity
   //self.meuSwitch.on = NO;
    [self alterarSwitch:self.meuSwitch];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_meuActivityIndicator release];
    [_meuSwitch release];
    [_meuProgress release];
    [_meuStepper release];
    [super dealloc];
}

#pragma mark - Minhas Ações

- (IBAction)alterarSwitch:(UISwitch *)sender {
    
    // Verificamos se o switch está selecionado ou não
    if (sender.on) {
        // Caso o switch esteja como on.
        
        // Ativamos o nosso activity
        
        [self.meuActivityIndicator startAnimating];
        
    }else{
    // caso o switch esteja selecionado como off
    
        // Desativamos a animação
        [self.meuActivityIndicator stopAnimating];
    
    }
    
    
    
    
    
    
}

// Método disparado quano o interagimos com o stepper
- (IBAction)alterarStepper:(UIStepper *)sender {
    // Por padrão o progress recebe valores de 0.0 a 1.0 para que possamos criar uma função em relação ao percentual de determinado processo.
    
    NSLog(@"%.2f", sender.value);
    self.meuProgress.progress = sender.value/10;
    
    
}










@end
