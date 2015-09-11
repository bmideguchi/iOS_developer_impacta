//
//  ViewController.m
//  desafioConfiguracoes
//
//  Created by NoiteA on 24/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.buttonInverterCores.enabled = NO;
    self.stepperUnico.enabled = NO;
    self.sliderUnico.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelTitulo release];
    [_labelHabilitarConfiguracoes release];
    [_labelInverterCores release];
    [_labelPosicaoSlider release];
    [_buttonHabilitarConfiguracoes release];
    [_buttonInverterCores release];
    [_stepperUnico release];
    [_sliderUnico release];
    [_progressBarUnica release];
    [super dealloc];
}

#pragma mark - Minhas Ações

- (IBAction)alterarButtonHabilitarConfiguracoes:(UISwitch *)sender {
}
- (IBAction)alterarButtonInverterCores:(UISwitch *)sender {
}
- (IBAction)alterarStepperUnico:(UIStepper *)sender {
}
- (IBAction)alterarSliderUnico:(UISlider *)sender {
}
@end
