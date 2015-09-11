//
//  Tela3ViewController.m
//  UITabBarController
//
//  Created by Felipe Martins on 01/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela3ViewController.h"

@interface Tela3ViewController ()

@end

@implementation Tela3ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// limpando a label
    self.labelSelecao.text = nil;
    
    // Forçando o metodo a ocorrer
    [self alterarSegmented:nil];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterarSegmented:(UISegmentedControl *)sender {

    
    if (sender.selectedSegmentIndex == 0) {
        
        
        self.labelSelecao.text = @"Primeiro segmento";
        
    }else if (sender.selectedSegmentIndex == 1){
    
        self.labelSelecao.text = @"Segundo segmento";
        
    }else{
    
        self.labelSelecao.text = @"Terceiro segmento";
    
    }
    
    
    
    
    
    
}
@end
