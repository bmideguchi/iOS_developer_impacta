//
//  ViewController.m
//  ARC
//
//  Created by Felipe Martins on 26/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Colocando um placeholder em nossa textField
    self.textFieldUnica.placeholder = @"Digite seu nome";
    
    // Alinhando ao centro a nossa textField
    self.textFieldUnica.textAlignment = NSTextAlignmentCenter;
    
    // Limpando nossas labels
    self.labelValorWeak.text = self.labelValorStrong.text = nil;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

- (IBAction)mostrar:(UIButton *)sender {
    
    if (self.textFieldUnica.text.length > 0) {
        
        // Criamos uma variável que recebe o texto.
        NSString *nome = self.textFieldUnica.text;
        
        // Colocamos o texto em nossa propriedade de ligação forte
        self.nomeStrong = [[NSString alloc]initWithString:nome];
        
        
        // Colocamos o texto em nossa property com a ligação fraca, o próprio sistema já nos gerar um alerta avisando da inviabilidade da ação
        
        self.nomeWeak = [[NSString alloc]initWithString:nome];
        
        //
        
        
        // Colocando os textos em nossas labels
        self.labelValorStrong.text = self.nomeStrong;
        self.labelValorWeak.text = self.nomeWeak;
        
        
        NSLog(@"Weak: %@", self.labelValorWeak.text);
        NSLog(@"Strong: %@", self.labelValorStrong.text);
        
        
    }
    
    
    
    
}











@end
