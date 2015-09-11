//
//  ViewController.m
//  DesafioConversorRealDolar
//
//  Created by Felipe Martins on 07/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando o intervalo do nosso slider
    
    self.sliderConversor.minimumValue = 1.0;
    self.sliderConversor.maximumValue = 1000.0;
    
    // Setando o valor inicial
    
    self.sliderConversor.value = 1.0;
    
    
    
    
    // Forçando a ação do conversor a ocorrer
    [self converterMoeda:self.sliderConversor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelReal release];
    [_labelDolar release];
    [_sliderConversor release];
    [super dealloc];
}


#pragma mark - Minhas Ações

// Método que será disparadopor nosso slider
- (IBAction)converterMoeda:(UISlider *)sender {
    
    // Criando uma variável que armazena a taxa de câmbio
    float taxaCambio = 2.23;
    
    // Setando em nossa labelreal o valor do slider
    self.labelReal.text = [NSString stringWithFormat:@"R$ %.2f",sender.value *taxaCambio];
    
    // Setando em nossa labelReal o valor do slider
    self.labelDolar.text = [NSString stringWithFormat:@"US$ %.2f", sender.value];
    
    
    
}






@end
