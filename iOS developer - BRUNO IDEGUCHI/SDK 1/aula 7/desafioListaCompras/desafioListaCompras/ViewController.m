//
//  ViewController.m
//  desafioListaCompras
//
//  Created by NoiteA on 14/06/13.
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
    [_textFieldItem1 release];
    [_textFieldItem2 release];
    [_textFieldItem3 release];
    [_textFieldItem4 release];
    [_textFieldResultado release];
    [super dealloc];
}
- (IBAction)buttonMostrarResultado:(UIButton *)sender{
    NSArray *arrayListaCompras = [[NSArray alloc]initWithObjects:@"Arroz",@"Feijão",@"Carne",@"Batata",nil];


self.textFieldItem1.text = [arrayListaCompras objectAtIndex:0];
self.textFieldItem2.text = [arrayListaCompras objectAtIndex:1];
self.textFieldItem3.text = [arrayListaCompras objectAtIndex:2];
self.textFieldItem4.text = [arrayListaCompras objectAtIndex:3];

self.textFieldResultado.text = [NSString stringWithFormat:@"%i", [arrayListaCompras count]];
}



@end
