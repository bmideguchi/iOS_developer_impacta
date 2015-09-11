//
//  ViewController.m
//  UISlider
//
//  Created by Felipe Martins on 05/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
        // Definindo o intervalo do slider
    
    // Propriedade que define o menor valor no slider
    self.sliderUnico.minimumValue = 1.0;
    
    // Propiedade que define o maior valor no slider
    self.sliderUnico.maximumValue = 100.0;
    
    // Propriedade que define o valor do slider
    
    self.sliderUnico.value = 30.0;
    
    // Propriedade que define a cor da minunimum track
    
    self.sliderUnico.minimumTrackTintColor = [UIColor yellowColor];
    
    
    //  Propiedade que define a cor da maximum track
    
    self.sliderUnico.maximumTrackTintColor = [UIColor purpleColor];
    
    
    
    // Propriedade que define a cor do thumb (bolinha)
    
    self.sliderUnico.thumbTintColor = [UIColor blueColor];
    
    
    // Modo gambiarra
   // self.labelValor.text = @"50";
    
    
    // Modo joinha
    // Forçando o método a ser chamado assim que o sistema é iniciado (desta forma NÃO podemos utilizar o sender, pois ainda não foi enviando nehuma solicitação, já que o evento só roda euando interagimos com o slider)
    [self alterarSliderUnico:nil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelValor release];
    [_sliderUnico release];
    [super dealloc];
    
}

#pragma mark - Minhas Ações


// Método que atualizará nossa label com o valor do slider

- (IBAction)alterarSliderUnico:(UISlider *)sender {
    
//    self.labelValor.text = [NSString stringWithFormat:@"%.0f",self.sliderUnico.value];
    
    // Podemos fazer esta captura através do sender que é o objeto que está disparando o método
    
    self.labelValor.text = [NSString stringWithFormat:@"%.0f",sender.value];
    
}











@end
