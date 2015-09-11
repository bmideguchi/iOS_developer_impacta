//
//  ViewController.h
//  desafioConfiguracoes
//
//  Created by NoiteA on 24/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Declaração dos LABELS

@property (retain, nonatomic) IBOutlet UILabel *labelTitulo;

@property (retain, nonatomic) IBOutlet UILabel *labelHabilitarConfiguracoes;

@property (retain, nonatomic) IBOutlet UILabel *labelInverterCores;

@property (retain, nonatomic) IBOutlet UILabel *labelPosicaoSlider;


//Declaração dos BUTTONS
@property (retain, nonatomic) IBOutlet UISwitch *buttonHabilitarConfiguracoes;

- (IBAction)alterarButtonHabilitarConfiguracoes:(UISwitch *)sender;

@property (retain, nonatomic) IBOutlet UISwitch *buttonInverterCores;

- (IBAction)alterarButtonInverterCores:(UISwitch *)sender;

//Declaração do STEPPER
@property (retain, nonatomic) IBOutlet UIStepper *stepperUnico;

- (IBAction)alterarStepperUnico:(UIStepper *)sender;

//Declaração do SLIDER
@property (retain, nonatomic) IBOutlet UISlider *sliderUnico;

- (IBAction)alterarSliderUnico:(UISlider *)sender;

//Declaração do PROGRESS BAR
@property (retain, nonatomic) IBOutlet UIProgressView *progressBarUnica;

@end
