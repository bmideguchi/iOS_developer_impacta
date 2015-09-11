//
//  telaMoedaViewController.m
//  aula3Desafio2
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "telaMoedaViewController.h"

@interface telaMoedaViewController ()

@end

@implementation telaMoedaViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.labelDolar.text = nil;
    self.labelReal.text = nil;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderMoeda:(UISlider *)sender {
    
    self.labelReal.text = [NSString stringWithFormat:@"Real: %.2f", sender.value];
    
    self.labelDolar.text = [NSString stringWithFormat:@"Dolar: %.2f", (sender.value * 2.13)];
}
@end
