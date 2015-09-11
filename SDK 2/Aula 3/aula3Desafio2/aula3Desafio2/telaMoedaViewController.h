//
//  telaMoedaViewController.h
//  aula3Desafio2
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface telaMoedaViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *labelReal;
@property (weak, nonatomic) IBOutlet UILabel *labelDolar;

- (IBAction)sliderMoeda:(UISlider *)sender;

//Declarando a action para o cálculo do IMC
- (BOOL)calcularIMC();

@end
