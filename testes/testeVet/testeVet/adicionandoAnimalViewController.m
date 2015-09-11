//
//  adicionandoAnimalViewController.m
//  testeVet
//
//  Created by NoiteA on 31/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "adicionandoAnimalViewController.h"

@interface adicionandoAnimalViewController ()

@end

@implementation adicionandoAnimalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Alocando e iniciando os mutableArrays
    self.mutableArrayNomeDoAnimal = [[NSMutableArray alloc]init];
    self.mutableArrayTipoDoAnimal = [[NSMutableArray alloc]init];
    self.mutableArrayIdadeDoAnimal = [[NSMutableArray alloc]init];
    self.mutableArrayEnfermidadeDoAnimal = [[NSMutableArray alloc]init];
    
    self.textFieldNomeDoAnimal.delegate = self;
    self.textFieldTipoDoAnimal.delegate = self;
    self.textFieldIdadeDoAnimal.delegate = self;
    self.textFieldEnfermidadeDoAnimal.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoSalvar:(UIButton *)sender {
    /*
    [self.mutableArrayNomeDoAnimal addObject:self.textFieldNomeDoAnimal.text];
    [self.mutableArrayTipoDoAnimal addObject:self.textFieldTipoDoAnimal.text];
    [self.mutableArrayIdadeDoAnimal addObject:self.textFieldIdadeDoAnimal.text];
    [self.mutableArrayEnfermidadeDoAnimal addObject:self.textFieldEnfermidadeDoAnimal.text];
    */
    
    
}

#pragma mark - Ações de UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField == self.textFieldNomeDoAnimal) {
        [self.textFieldNomeDoAnimal resignFirstResponder];
        [self.textFieldTipoDoAnimal becomeFirstResponder];
    }
    if (textField == self.textFieldTipoDoAnimal) {
        [self.textFieldTipoDoAnimal resignFirstResponder];
        [self.textFieldIdadeDoAnimal becomeFirstResponder];
    }
    if (textField == self.textFieldIdadeDoAnimal) {
        [self.textFieldIdadeDoAnimal resignFirstResponder];
        [self.textFieldEnfermidadeDoAnimal becomeFirstResponder];
    }
    if (textField == self.textFieldEnfermidadeDoAnimal) {
        [self.textFieldEnfermidadeDoAnimal resignFirstResponder];
    }
    
}
@end
