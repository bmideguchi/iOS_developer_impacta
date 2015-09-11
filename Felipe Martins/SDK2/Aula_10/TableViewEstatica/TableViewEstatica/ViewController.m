//
//  ViewController.m
//  TableViewEstatica
//
//  Created by Felipe Martins on 17/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



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

- (IBAction)voltar:(id)sender {
    
    // Método que voltamos via código
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)irProximaTela:(id)sender {
    
    // Executando um segue via código
    
    [self performSegueWithIdentifier:@"segueTela3" sender:nil];
    
    
    
    
}




@end
