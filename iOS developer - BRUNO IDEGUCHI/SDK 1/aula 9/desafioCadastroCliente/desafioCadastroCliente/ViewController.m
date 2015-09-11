//
//  ViewController.m
//  desafioCadastroCliente
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
	// Do any additional setup after loading the view, typically from a nib.
    
    //Allocando e iniciando meus mutableArrays
    self.mutableArrayNome = [[NSMutableArray alloc]initWithObjects:@"teste1", nil];
    self.mutableArrayTelefone = [[NSMutableArray alloc]initWithObjects:@"teste2",nil];
    self.mutableArrayEmail = [[NSMutableArray alloc]initWithObjects:@"teste3", nil];
    
    //Deixando as caixas não editáveis
    self.textFieldNome.enabled = NO;
    self.textFieldTelefone.enabled = NO;
    self.textFieldEmail.enabled = NO;
    self.textViewResultado.editable = NO;
    
    //Ligando o delegate
    self.textFieldNome.delegate = self;
    self.textFieldTelefone.delegate = self;
    self.textFieldEmail.delegate = self;
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
    [_textViewResultado release];
    [super dealloc];
}





#pragma mark - Minhas ações

//Método do botão mostrarResultado
- (IBAction)mostrarResultado:(UIBarButtonItem *)sender {
    //Definindo a string que será exibida no textViewResultado
    self.textViewResultado.text = [NSString stringWithFormat:@"Nome: %@\nTelefone: %@\nE-mail: %@", [self.mutableArrayNome objectAtIndex:(self.mutableArrayNome.count-1)], [self.mutableArrayTelefone objectAtIndex:(self.mutableArrayTelefone.count-1)], [self.mutableArrayEmail objectAtIndex:(self.mutableArrayEmail.count-1)]];
}

//Método do botão LIMPAR
- (IBAction)limpar:(UIBarButtonItem *)sender {
    //Aplicando a propriedade de vazio nos text fields
    self.textFieldNome.text = nil;
    self.textFieldTelefone.text = nil;
    self.textFieldEmail.text = nil;
}

//Método do botão de habilitar edição
- (IBAction)habilitarEdicao:(UIBarButtonItem *)sender {
    //Transformando a propriedade de edição em YES
    self.textFieldNome.enabled = YES;
    self.textFieldTelefone.enabled = YES;
    self.textFieldEmail.enabled = YES;
    //Levando o cursor para o textFieldNome
    [self.textFieldNome becomeFirstResponder];
}





#pragma mark - Funções de Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
 
    if (textField == self.textFieldNome){
        self.nome = self.textFieldNome.text;
        [self.mutableArrayNome addObject:self.nome];
        [self.textFieldTelefone becomeFirstResponder];
    }
    
    if (textField == self.textFieldTelefone){
        self.telefone = self.textFieldTelefone.text;
        [self.mutableArrayTelefone addObject:self.telefone];
        [self.textFieldEmail becomeFirstResponder];
    }
    
    if (textField == self.textFieldEmail){
        self.email = self.textFieldEmail.text;
        [self.mutableArrayEmail addObject:self.email];
        [self.textFieldEmail resignFirstResponder];
        self.textFieldNome.text = nil;
        self.textFieldTelefone.text = nil;
        self.textFieldEmail.text = nil;
        
    }
    NSLog(@"%@,%@,%@", [self.mutableArrayNome objectAtIndex:(self.mutableArrayNome.count-1)], [self.mutableArrayTelefone objectAtIndex:(self.mutableArrayTelefone.count-1)], [self.mutableArrayEmail objectAtIndex:(self.mutableArrayEmail.count-1)]);
    
    
    return YES;
}


@end
