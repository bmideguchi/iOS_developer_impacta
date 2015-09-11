//
//  Tela2ViewController.m
//  UITabBarController
//
//  Created by Felipe Martins on 01/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Criamos uma action para nosso switch
- (IBAction)mudarSwitch:(UISwitch *)sender {
    
    // Verificamos se o switch está on
    if (sender.on) {
        // Caso esteja on
        
        // Colocamos o background como branco
        self.view.backgroundColor = [UIColor whiteColor];
    
    }else{
    // caso não esteja on (esta off)
        
        // Setamos o background como preto
        self.view.backgroundColor = [UIColor blackColor];
    
    }
    
    
    
}
@end
