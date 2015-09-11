//
//  ViewController.m
//  DesafioCadastroCliente
//
//  Created by Felipe Martins on 24/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // desabilitando as textFields
    
    self.textFieldNome.enabled = self.textFieldTelefone.enabled = self.textFieldEmail.enabled = NO;
    
    
    // travando a edição da minha textView
    self.textViewUnica.editable = NO;
    
    // Zerar o texto da textView
    self.textViewUnica.text = nil;
    
    // Ligando os delegates na textField
    self.textFieldNome.delegate = self.textFieldTelefone.delegate = self.textFieldEmail.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_textFieldNome release];
    [_textFieldTelefone release];
    [_textFieldEmail release];
    [_textViewUnica release];
    [super dealloc];
}
- (IBAction)criarCadastro:(UIBarButtonItem *)sender {
    
    // Habilitamos as textFields
     self.textFieldNome.enabled = self.textFieldTelefone.enabled = self.textFieldEmail.enabled = YES;
    
    // Jogamos o foco na primeira textField
    
    [self.textFieldNome becomeFirstResponder];
    
    
}

- (IBAction)limparCadastro:(UIBarButtonItem *)sender {
    
    self.textFieldNome.text = nil;
    self.textFieldEmail.text = nil;
    self.textFieldTelefone.text = nil;
    
    self.textViewUnica.text = nil;
    
}

- (IBAction)mostrarCadastro:(UIBarButtonItem *)sender {
    
    self.textViewUnica.text = [NSString stringWithFormat:@"Nome: %@\nTelefone: %@\nE-mail: %@",self.nome, self.telefone, self.email];
    
}




-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    // Verificando se a textField com foco for a do nome. Colocamos o foco na textFieldTelefone
    if (textField == self.textFieldNome) {
        
        
        [self.textFieldTelefone becomeFirstResponder];
        
    }
    
    // Se a textField com foco for a do telefone, colocamos o foco na textField e-mail.
    if (textField == self.textFieldTelefone) {
        
        
        [self.textFieldEmail becomeFirstResponder];
    }
    
    if (textField == self.textFieldEmail) {
        
        
        
        if (self.textFieldNome.text.length > 0 && self.textFieldTelefone.text.length > 0 && self.textFieldEmail.text.length > 0) {
    
            // Atibuindo a nossas properties os valores de nossas textFields
            self.nome = self.textFieldNome.text;
            self.telefone = self.textFieldTelefone.text;
            self.email = self.textFieldEmail.text;
            
            
            // Limpando as textFields
            
            
            [self limparCadastro:nil];
            
//            self.textFieldNome.text = nil;
//            self.textFieldEmail.text = nil;
//            self.textFieldTelefone.text = nil;
            
            
            // Retirando o foco da textField para baixar o teclado
            [textField resignFirstResponder];
        }
        
        
        
       
        
        
        
        
        
    }
    


    return YES;
    
}



@end
