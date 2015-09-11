//
//  ViewController.m
//  DesafioLabelInformacoes
//
//  Created by Felipe Martins on 03/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Atribuição multipla
    self.labelNome.text = self.labelIdade.text = self.labelAltura.text = nil;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

-(void)clicarBotaoNome:(id)sender{

    self.labelNome.text = @"Felipe";

}

-(void)clicarBotaoIdade:(id)sender{

    self.labelIdade.text = @"21";

}


-(void)clicarBotaoAltura:(id)sender{

self.labelAltura.text = @"1.80";

}


-(void)clicarBotaoMostrarTudao:(id)sender{

   /* self.labelNome.text = @"Felipe";
    self.labelIdade.text = @"21";
    self.labelAltura.text = @"1.80"; */
    
    
    [self clicarBotaoNome:nil];
    [self clicarBotaoIdade:nil];
    [self clicarBotaoAltura:nil];

}



@end
