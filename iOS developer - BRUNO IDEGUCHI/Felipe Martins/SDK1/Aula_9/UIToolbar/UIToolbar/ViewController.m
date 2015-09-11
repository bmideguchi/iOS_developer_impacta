//
//  ViewController.m
//  UIToolbar
//
//  Created by Felipe Martins on 21/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
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
    
    // Limpar o texto
    self.textViewLetra.text = nil;
    
    
    
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

#pragma mark - Minhas Ações


- (IBAction)voltar:(UIBarButtonItem *)sender {
    
    self.textViewLetra.text = @"Girando, girando, girando, prum lado";
    
}

- (IBAction)play:(UIBarButtonItem *)sender {
    
    self.textViewLetra.text = @"Ahhhhhh Lelek lek lek lek lek lek lek";
    
}

- (IBAction)avancar:(UIBarButtonItem *)sender {
    
    self.textViewLetra.text = @"Girando, girando, girando pru outro";
    
}
@end
