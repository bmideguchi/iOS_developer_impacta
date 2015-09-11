//
//  ViewController.m
//  desafio1CORRECAO
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
	//Desabilitando a edição de textView
    self.textViewDados.editable = NO;
    
    //Tirando o texto com código
    self.textViewDados.text = nil;
    
    
    //Ligando o DELEGATE
    self.textFieldNome.delegate = self;
    self.textFieldSobrenome.delegate = self;
    self.textFieldIdade.delegate = self;
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
    [_textViewDados release];
    [super dealloc];
}


#pragma mark - Métodos de UITextFieldDelegate
//Método disparado quando o usuário aperta o RETURN no teclado virtual
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    //Tirar o foco do textFieldNome e mandar para o textFieldSobrenome
    if (textField == self.textFieldNome) {
        [self.textFieldSobrenome becomeFirstResponder];
    }
    
    //Tirar o foco do textFieldSobrenome e mandar para o textFieldIdade
    if (textField == self.textFieldSobrenome) {
        [self.textFieldIdade becomeFirstResponder];
    }
    
    //Tirar o foco do textFieldIdade e exibindo
    if (textField == self.textFieldIdade) {
        
        //A propriedade length me retorna o número de caracteres dentro da minha textField
        //VALIDAÇÃO:
        if (self.textFieldNome.text.length > 0 && self.textFieldSobrenome.text.length > 0 && self.textFieldIdade.text.length) {
            
            //Armazenamos os textos de todas as textFields em variáveis
            NSString *nome = self.textFieldNome.text;
            NSString *sobrenome = self.textFieldSobrenome.text;
            NSString *idade = self.textFieldIdade.text;
            
            self.textViewDados.text = [NSString stringWithFormat:@"Nome: %@\nSobrenome: %@\nIdade: %@", nome, sobrenome, idade];
            
            [self.textFieldIdade resignFirstResponder];
        
        }
        
        else{
            self.textViewDados.text = @"Tem coisa faltando!";
        }
        
        
        
    }
    
    return YES;
}

@end
