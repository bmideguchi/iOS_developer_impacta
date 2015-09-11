//
//  ViewController.m
//  desafioPreçoPassagem
//
//  Created by NoiteA on 14/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    //Propriedade que define a cor da minimum track
//    self.sliderUnico.minimumTrackTintColor = [UIColor greenColor];
//    
//    //Propriedade que define a cor da maximum track
//    self.sliderUnico.maximumTrackTintColor = [UIColor greenColor];
//    
//    //Criando uma UIImage:
//    UIImage *imagem = [UIImage imageNamed:@"feliz"];
//    
//    //Passando uma imagem com parâmetro para nossa ImageView
//    self.imageViewIconePrincipal.image = imagem;
//    
//    self.labelSliderUnico.text = @"Preço da passagem";
    
    self.sliderUnico.value = 1.50;
    
    [self mudarSliderUnico:self.sliderUnico];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageViewIconePrincipal release];
    [_sliderUnico release];
    [_labelSliderUnico release];
    [super dealloc];
}
- (IBAction)mudarSliderUnico:(UISlider *)sender {
    self.labelSliderUnico.text = [NSString stringWithFormat:@"Preço: %.2f", sender.value];
    
    
    
    
    if (self.sliderUnico.value < 2) {
        //Propriedade que define a cor da minimum track
        self.sliderUnico.minimumTrackTintColor = [UIColor greenColor];
        
        //Propriedade que define a cor da maximum track
        self.sliderUnico.maximumTrackTintColor = [UIColor greenColor];
        
        //Criando uma UIImage:
        UIImage *imagem = [UIImage imageNamed:@"feliz"];
        
        //Passando uma imagem com parâmetro para nossa ImageView
        self.imageViewIconePrincipal.image = imagem;
        
    }
    
    
    
    
    if (self.sliderUnico.value >= 2 && self.sliderUnico.value < 3) {
        //Propriedade que define a cor da minimum track
        self.sliderUnico.minimumTrackTintColor = [UIColor yellowColor];
        
        //Propriedade que define a cor da maximum track
        self.sliderUnico.maximumTrackTintColor = [UIColor yellowColor];
        
        //Criando uma UIImage:
        UIImage *imagem = [UIImage imageNamed:@"triste"];
        
        //Passando uma imagem com parâmetro para nossa ImageView
        self.imageViewIconePrincipal.image = imagem;
    }
    
    
    
    
    
if (self.sliderUnico.value >= 3) {
    //Propriedade que define a cor da minimum track
    self.sliderUnico.minimumTrackTintColor = [UIColor redColor];
    
    //Propriedade que define a cor da maximum track
    self.sliderUnico.maximumTrackTintColor = [UIColor redColor];
    
    //Criando uma UIImage:
    UIImage *imagem = [UIImage imageNamed:@"bravo"];
    
    //Passando uma imagem com parâmetro para nossa ImageView
    self.imageViewIconePrincipal.image = imagem;
}

}


@end
