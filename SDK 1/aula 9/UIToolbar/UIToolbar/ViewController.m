//
//  ViewController.m
//  UIToolbar
//
//  Created by NoiteA on 21/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Desabilitar a edição da textView
    self.textViewLetra.editable = NO;
    
    /**/
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_textViewLetra release];
    [super dealloc];
}
- (IBAction)voltar:(UIBarButtonItem *)sender {
    self.textViewLetra.text = @"Girando Girando Girando prum lado";
}

- (IBAction)play:(UIBarButtonItem *)sender {
    self.textViewLetra.text = @"Ahhhhh lelek lek lek lek lek lek lek";
}

- (IBAction)avancar:(UIBarButtonItem *)sender {
    self.textViewLetra.text = @"Girando Girando Girando pro outro!";
}
@end
