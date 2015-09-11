//
//  FirstViewController.m
//  DesafioConversoresTabbed
//
//  Created by Felipe Martins on 03/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Setando o limite do meu slider
    self.sliderConversor.minimumValue = 1.0;
    self.sliderConversor.maximumValue = 1000.0;
    
    // Iniciando o slider com o valor 1
    self.sliderConversor.value = 1.0;
    
    // Forçar o método
    
    [self converterMoeda:self.sliderConversor];
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)converterMoeda:(UISlider *)sender {

self.labelDollar.text = [NSString stringWithFormat:@"Dollar: US$%.2f", sender.value];
    
    self.labelReal.text = [NSString stringWithFormat:@"Real: R$%.2f", sender.value * 2.13];



}







@end
