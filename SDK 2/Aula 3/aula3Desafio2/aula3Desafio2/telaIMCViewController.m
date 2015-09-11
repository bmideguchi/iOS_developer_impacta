//
//  telaIMCViewController.m
//  aula3Desafio2
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "telaIMCViewController.h"

@interface telaIMCViewController ()

@end

@implementation telaIMCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.labelAltura.text = self.labelIMC.text = self.labelPeso.text = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderPeso:(UISlider *)sender {
    self.labelPeso.text = [NSString stringWithFormat:@"Peso: %.2f", sender.value];
}

- (IBAction)sliderAltura:(UISlider *)sender {
    self.labelAltura.text = [NSString stringWithFormat:@"Altura: %.2f", sender.value];
}
@end
