//
//  SecondViewController.m
//  DesafioConversoresTabbed
//
//  Created by Felipe Martins on 03/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Limpando as labels
    self.labelAltura.text = nil;
    self.labelPeso.text = nil;
    self.labelIMC.text = nil;
    
    // Limitando o slider altura
    self.sliderAltura.minimumValue = 1.0;
    self.sliderAltura.maximumValue = 4.0;
    
    // Limitando o valor  do sliderPeso
    self.sliderPeso.minimumValue = 1.0;
    self.sliderPeso.maximumValue = 400.0;
    
    // Setando os valores iniciais
    self.sliderPeso.value = 1.0;
    self.sliderAltura.value = 1.0;
    
    // Forçando o método a ocorrer
    [self calcularIMC:self.sliderAltura];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

- (IBAction)calcularIMC:(UISlider *)sender {
    
    // Atualizando as labels peso e altura
    self.labelPeso.text = [NSString stringWithFormat:@"Peso: %.2f", self.sliderPeso.value];
    self.labelAltura.text = [NSString stringWithFormat:@"Altura: %.2f", self.sliderAltura.value];
    
    
    
    // Formula do IMC: IMC = peso / (altura * altura).
    
    float peso = self.sliderPeso.value;
    float altura = self.sliderAltura.value;
    
    float IMC = peso / (altura * altura);
    
    // Atualizando a label IMC
    self.labelIMC.text = [NSString stringWithFormat:@"IMC: %.2f", IMC];
    
    
    
    
    
    
    
    
    
    
}
@end
