//
//  ViewController.m
//  UISegmentedCores
//
//  Created by Felipe Martins on 05/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    [self alterarSegmentedCores:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_segmentedMudarCores release];
    [super dealloc];
}



#pragma mark - Minhas ações

- (IBAction)alterarSegmentedCores:(UISegmentedControl *)sender {
    
    // Recebendo o indice clicado
    int indice = sender.selectedSegmentIndex;
    
    
    switch (indice) {
        case 0:
            
            self.view.backgroundColor = [UIColor blueColor];
            
            break;
        case 1:
            
            self.view.backgroundColor = [UIColor greenColor];
            
            break;
            
        case 2:
            
            self.view.backgroundColor = [UIColor whiteColor];
            break;
        case 3:
            
            self.view.backgroundColor = [UIColor blackColor];
            break;
        
        default:
            NSLog(@"Opção inválida");
            
            break;
    }
    
    
    
    
}
@end
