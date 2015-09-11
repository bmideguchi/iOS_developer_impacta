//
//  ViewController.m
//  aula3Desafio1
//
//  Created by NoiteA on 05/06/13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_segmentedControlTabuada release];
    [_labelExibeTabuada release];
    [super dealloc];
}



#pragma mark - Minhas Ações

-(IBAction)alterarSegmentedTabuada:(UISegmentedControl *)sender{
    
    int indice = sender.selectedSegmentIndex;
    
    
    for (int i = 1; i<=10; i++) {
        self.labelExibeTabuada.text = [NSString stringWithFormat:@"%i X %i = %i", indice+1, i, i*(indice+1)];
        NSLog(@"%i X %i = %i", indice+1, i, i*(indice+1));
    }}



@end