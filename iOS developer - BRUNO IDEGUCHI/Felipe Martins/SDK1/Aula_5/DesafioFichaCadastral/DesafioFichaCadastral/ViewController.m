//
//  ViewController.m
//  DesafioFichaCadastral
//
//  Created by Felipe Martins on 10/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Desabilitando a edição de nossa textView
    
    self.textViewDados.editable = NO;
    
    // Trando o texto da minha textView
    self.textViewDados.text = nil;
    
    // Ligando o delegate
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

// Método disparado quando o usuário aperta o enter no teclado
-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    // Fazendo uma verificação em qual textField estamos
    
    // Se a textField for a textFieldNome
    if (textField == self.textFieldNome) {
        
        // Damos o foco para a textFieldSobrenome
        [self.textFieldSobrenome becomeFirstResponder];
        
    }
    
    // Se a textField for a textFieldSobrenome
    if (textField == self.textFieldSobrenome) {
        
        // Damos o foco para a textFieldIdade
        [self.textFieldIdade becomeFirstResponder];
    }
    
    // Se a texttField For a textFieldIdade
    if (textField == self.textFieldIdade) {
        
        // A propriedade length me retorna o número de caracteres dentro da minha textField
        if (self.textFieldNome.text.length > 0 && self.textFieldSobrenome.text.length > 0 && self.textFieldIdade.text.length > 0) {
            
            // Armazenamos os textos de todas as textFields em variáveis.
            NSString *nome = self.textFieldNome.text;
            NSString *sobrenome = self.textFieldSobrenome.text;
            NSString *idade = self.textFieldIdade.text;
            
            self.textViewDados.text = [NSString stringWithFormat:@"Nome: %@\nSobrenome: %@\nIdade: %@",nome,sobrenome,idade];
            
            [self.textFieldIdade resignFirstResponder];
            

            
            
        }else{
        
        
            NSLog(@"Digita awe!");
            
          
            [self.textFieldNome becomeFirstResponder];
            
            
        
        }
        
        
        
              
        
        
        
    }
    
    
    
    

    return YES;
}



@end
