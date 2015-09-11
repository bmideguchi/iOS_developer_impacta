//
//  ViewController.m
//  desafioFichaCadastral
//
//  Created by NoiteA on 10/06/13.
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
    [_textFieldNome release];
    [_textFieldSobrenome release];
    [_textFieldIdade release];
    [_textViewPrincipal release];
    [super dealloc];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    self.textViewPrincipal.text = [NSString stringWithFormat:@"Nome: %@\nSobrenome: %@\nIdade: %i\n", self.nome, self.Sobrenome, (NSUInteger *)self.idade];
    return true;
}

- (IBAction)textFieldEditarNome:(UITextField *)sender {
    self.nome = (NSString *)self.textFieldNome.text;
}

- (IBAction)textFieldEditarSobrenome:(UITextField *)sender {
    self.sobrenome = (NSString *)self.textFieldSobrenome.text;
}

- (IBAction)textFieldEditarIdade:(UITextField *)sender {
    self.idade = (NSUInteger *)self.textFieldIdade;
}




@end
