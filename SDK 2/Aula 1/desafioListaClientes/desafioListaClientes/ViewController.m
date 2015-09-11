//
//  ViewController.m
//  desafioListaClientes
//
//  Created by NoiteA on 26/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Setando os placeholders:
    self.textFieldNome.placeholder = @"Digite um nome";
    self.textFieldSobrenome.placeholder = @"Digite um sobrenome";
    
    //Deixando os textFields e o text view não editáveis
    self.textFieldNome.enabled = NO;
    self.textFieldSobrenome.enabled = NO;
    self.textViewUnica.editable = NO;
    
    //Ligando o delegate
    self.textFieldNome.delegate = self;
    self.textFieldSobrenome.delegate = self;
    
    //Iniciando e allocando os mutable arrays
    self.mutableArrayArmazenaNomes = [[NSMutableArray alloc]init];
    self.mutableArrayArmazenaSobrenomes = [[NSMutableArray alloc]init];
    
    self.contador = 0;
    
    //Desabilitar os botões de ir pra frente e para tras
    self.botaoAvancar.enabled = NO;
    self.botaoVoltar.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





#pragma mark - MINHAS AÇÕES

- (IBAction)ButtonItemNovo:(UIBarButtonItem *)sender {
    self.textFieldNome.enabled = YES;
    [self.textFieldNome becomeFirstResponder];
}


- (IBAction)ButtonItemAnterior:(UIBarButtonItem *)sender {
    
    
    
}

- (IBAction)ButtonItemPosterior:(UIBarButtonItem *)sender {
    
    self.textViewUnica.text = [self.mutableArrayArmazenaNomes objectAtIndex:self.contador];
    
    self.contador++;
    
}



#pragma mark - Ações de UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (textField == self.textFieldNome) {
        self.textFieldSobrenome.enabled = YES;
        [self.textFieldSobrenome becomeFirstResponder];
    }
    
    if (textField == self.textFieldSobrenome) {
        NSString *nome;
        NSString *sobrenome;
        
        nome = self.textFieldNome.text;
        sobrenome = self.textFieldSobrenome.text;
        
        [self.mutableArrayArmazenaNomes addObject:nome];
        [self.mutableArrayArmazenaSobrenomes addObject:sobrenome];
        [self.textFieldSobrenome resignFirstResponder];
        
        //Transformando os textFields em não editáveis novamente
        self.textFieldNome.enabled = NO;
        self.textFieldSobrenome.enabled = NO;
        
        //Limpando os nomes nas textFields
        self.textFieldNome.text = nil;
        self.textFieldSobrenome.text = nil;
        
        //Conferindo
        NSLog(@"%i", self.mutableArrayArmazenaNomes.count);
        NSLog(@"%i", self.mutableArrayArmazenaSobrenomes.count);
        
        
        //Habilitando os botões
        self.botaoVoltar.enabled = YES;
        self.botaoAvancar.enabled = YES;
        
        
        
    }
    
    return YES;
}




@end
