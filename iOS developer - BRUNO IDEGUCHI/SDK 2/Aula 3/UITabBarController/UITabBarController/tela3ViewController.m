//
//  tela3ViewController.m
//  UITabBarController
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "tela3ViewController.h"

@interface tela3ViewController ()

@end

@implementation tela3ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.labelSelecao.text = nil;
    
    //Forçando o método a ocorrer:
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
    }
    else if (sender.selectedSegmentIndex == 1){
        self.labelSelecao.text = @"Segundo segmento";
    }
    else{
        self.labelSelecao.text = @"Terceiro segmento";
    }
    
}
@end
