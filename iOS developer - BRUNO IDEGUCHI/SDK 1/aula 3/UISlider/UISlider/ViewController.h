//
//  ViewController.h
//  UISlider
//
//  Created by NoiteA on 05/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *labelValor;

@property (retain, nonatomic) IBOutlet UISlider *sliderUnico;

/*
 
 UI Slider
 
 Slider é uma barra horizontal que representa um intervalo de valores
 
 A "bolinha" do meio é conhecida como "thumb".
 
 O espaço a esquerda do thumb é conhecido como Minimum Track.
 
 O espaço a direita do thumb é conhecido como Maximum Track.
 
 */


- (IBAction)alterarSliderUnico:(UISlider *)sender;

@end
