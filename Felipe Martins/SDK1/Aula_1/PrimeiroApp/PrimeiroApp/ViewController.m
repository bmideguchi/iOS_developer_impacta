//
//  ViewController.m
//  PrimeiroApp
//
//  Created by Felipe Martins on 29/05/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    // Primeiro método a rodar no carregamento da nossa tela
    
    self.labelNome.text = @"Garibaldo";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// pragma mark é uma marcação para oraganização de código em seu sistema

#pragma mark - Minhas Ações

-(void)clicarBotao:(id)sender{

    // Tudo que for implementado aqui será executado quando o botão for clicado.
    
    self.labelNome.text = @"Felipe";

}




@end
