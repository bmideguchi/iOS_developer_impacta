//
//  Tela2ViewController.m
//  TrocaDadosEntreTelasViaSegue
//
//  Created by Felipe Martins on 03/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Mostrando as variáveis passadas via segue
    
    
    NSString *nomeCompleto = [NSString stringWithFormat:@"%@ %@", self.nomePrimeiraTela, self.sobrenomePrimeiraTela];
    
    NSLog(@"%@", nomeCompleto);
    
    self.labelDados.text = nomeCompleto;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
