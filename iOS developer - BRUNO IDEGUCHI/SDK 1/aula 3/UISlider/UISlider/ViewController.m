//
//  ViewController.m
//  UISlider
//
//  Created by NoiteA on 05/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Definindo o intervalo do slider
    
    //Propriedade que define o menor valor do slider
    self.sliderUnico.minimumValue = 1.0;
    
    //Propriedade que define o maior valor no slider
    self.sliderUnico.maximumValue = 100.0;
    
    //Propriedade que define a cor da minimum track
    self.sliderUnico.minimumTrackTintColor = [UIColor yellowColor];
    
    //Propriedade que define a cor da maximum track
    self.sliderUnico.maximumTrackTintColor = [UIColor purpleColor];
    
    //Propriedade que define o valor do slider
    self.sliderUnico.value = 50.0;
    
    //Propriedade que define a cor do thumb
    self.sliderUnico.thumbTintColor = [UIColor blueColor];
    
    //Forçando o método a ser chamado assim que o sistema é iniciado (Desta forma não podemos utilizar o sender, pois ainda não foi enviada nenhuma solicitação, já que o evento só roda quando interagimos com o slider).
    [self alterarSliderUnico: self.sliderUnico];
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

//Método que atualizará nossa label com o valor do slider
//Podemos fazer essa captura através do SENDER, que é o objeto que está disparando o método
- (IBAction)alterarSlider:(UISlider *)sender {
    self.labelValor.text = [NSString stringWithFormat:@"%.1f", sender.value];
}

- (IBAction)alterarSliderUnico:(UISlider *)sender {
}

@end
