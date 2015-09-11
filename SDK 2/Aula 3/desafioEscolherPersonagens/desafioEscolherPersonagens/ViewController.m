//
//  ViewController.m
//  desafioEscolherPersonagens
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.sliderLiberacoes.value = 0.0;
    
    [self mostrarBotao:self.sliderLiberacoes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarBotao:(UISlider *)sender {
    
    self.botaoPersonagem1.hidden = sender.value < 0.01;
    self.botaoPersonagem2.hidden = sender.value < 0.2;
    self.botaoPersonagem3.hidden = sender.value < 0.4;
    self.botaoPersonagem4.hidden = sender.value < 0.6;
    self.botaoPersonagem5.hidden = sender.value < 0.8;
    
}
@end
