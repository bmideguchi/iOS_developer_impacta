//
//  ViewController.m
//  DesafioPrecoPassagem
//
//  Created by Felipe Martins on 19/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando o intervalo do slider
    self.sliderValor.minimumValue = 1.0;
    self.sliderValor.maximumValue = 4.0;
    
    // Iniciando o valor do slider
    self.sliderValor.value = 1.50;
    
    
    // Forçando o método a ocorrer
    [self alterarValorSlider:self.sliderValor];
       
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageViewCarinha release];
    [_labelPreco release];
    [_sliderValor release];
    [super dealloc];
}


#pragma mark - Minhas Ações

- (IBAction)alterarValorSlider:(UISlider *)sender {
    
    self.labelPreco.text = [NSString stringWithFormat:@"%.2f",self.sliderValor.value];
    

    
    // Criando uma condição para exibição das carinhas
    if (sender.value < 2.0) {
        // Se o valor for menor que 2
        
        
        // Nossa imageView recebe a carinha de feliz
        self.imageViewCarinha.image = [UIImage imageNamed:@"feliz"];
        
        // Atualizando ambos os lados do nosso slider para verde
        self.sliderValor.minimumTrackTintColor = [UIColor greenColor];
        self.sliderValor.maximumTrackTintColor = [UIColor greenColor];
        
        
        
        
        
    }else if (sender.value < 3.0){
        // Se o valor for maior que 2 porém menor que 3
    
        // Nossa imageView recebe a carinha triste
        self.imageViewCarinha.image = [UIImage imageNamed:@"triste"];
        
        // Nosso slider fica amarelo
        self.sliderValor.minimumTrackTintColor = [UIColor yellowColor];
        self.sliderValor.maximumTrackTintColor = [UIColor yellowColor];
        

        
    }else{
        // Se for maior que 3
    
    
        // Nossa imageView recebe a carinha bravo
        self.imageViewCarinha.image = [UIImage imageNamed:@"bravo"];
        
        // nosso slider fica vermelho
        self.sliderValor.minimumTrackTintColor = [UIColor redColor];
        self.sliderValor.maximumTrackTintColor = [UIColor redColor];

    
    
    }
    
    
    
    
    
    
    
    
    
    
}
@end
