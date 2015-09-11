//
//  ViewController.m
//  DesafioListaClientes
//
//  Created by Felipe Martins on 28/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Iniciando o contador
    self.contador = -1;
    
   
    // Travando as textFields
    [self travar];
    
    
    // Ligando os delegates de nossas textFields
    self.textfieldNome.delegate = self;
    self.textFieldSobrenome.delegate = self;
    
    // Alocando e iniciando noso array
    self.arrayDados = [[NSMutableArray alloc]init];
    
    // limpando e travando nossa textView
    self.textViewDados.text = nil;
    self.textViewDados.editable = NO;
    
    // Habilitando a propriedade que some com nosso activity quando ele esta parado.
    
    self.activityUnico.hidesWhenStopped = YES;
    
    // Travando nossos botões de ida e volta
    self.botaoProsseguir.enabled = NO;
    self.botaoVoltar.enabled = NO;
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

- (IBAction)criarNovo:(UIBarButtonItem *)sender {
    
    
    
    
    
    // Destravando as textFields
    [self destravar];
    

    
    
    
}

- (IBAction)voltar:(UIBarButtonItem *)sender {
    // Decrementando o contador
    self.contador--;
    
    if (self.contador < 0) {
        
        
        self.contador = [self.arrayDados count]-1;
    }
    
    NSLog(@"contador: %i", self.contador);
    
    // mostramos os dados na textView
    self.textViewDados.text = [self.arrayDados objectAtIndex:self.contador];
    
}

- (IBAction)prosseguir:(UIBarButtonItem *)sender {
    // Incrementamos o nosso contador
    self.contador++;
    
    // Caso seja iguoa ao ultimo indice do array atribuimos o valor zero, que é o primeiro item. causando o efeito "Circulo"
    if (self.contador == [self.arrayDados count]) {
        
        self.contador = 0;
    }
    
    NSLog(@"contador: %i", self.contador);
    
    self.textViewDados.text = [self.arrayDados objectAtIndex:self.contador];
    
}

-(void)travar{

    self.textfieldNome.enabled = NO;
    self.textFieldSobrenome.enabled = NO;

}


-(void)destravar{

   
    // Animando nosso activity
    [self.activityUnico startAnimating];
    
    // Liberando as textFields
    self.textfieldNome.enabled = YES;
    self.textFieldSobrenome.enabled = YES;
    
    // Dando o foco para nossa primeira textField
    [self.textfieldNome becomeFirstResponder];

}

#pragma mark - UITextFieldDelegate


-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    // Criando uma navegação
    
    // Se a textField for a nome
    if ([textField isEqual:self.textfieldNome]) {
        // Obs - isEqual é um método para comparação de objetos. Semelhante ao (==).
        
        
        // Colocamos o foco na textFieldSobrenome
        [self.textFieldSobrenome becomeFirstResponder];
        
    }else{
        // Caso a textField seja a sobrenome
    
        
        // Verficamos se as caixas de texto tem algo digitado nelas
        if (self.textfieldNome.text.length > 0 && self.textFieldSobrenome.text.length >0) {
            // Caso haja dados digitados para serem gravados continuamos o processo.
            
            // Armazenamos os dados digitados em variaveis locais
            NSString *nome = self.textfieldNome.text;
            NSString *sobrenome = self.textFieldSobrenome.text;
            
            // Criamos uma string com as duas variáveis
            NSString *nomeCompleto = [NSString stringWithFormat:@"%@ %@",nome,sobrenome];
            
            // Adicionando nosso cadastrado no array
            
            [self.arrayDados addObject:nomeCompleto];
            
            // limpando as textFields
            
            self.textfieldNome.text = nil;
            self.textFieldSobrenome.text = nil;
            
            // Travando as textFields
            
            [self travar];
            
            // Parando a animação do nosso activity
            
            [self.activityUnico stopAnimating];
            
            
            // Destravando o botão
            self.botaoProsseguir.enabled = YES;
            self.botaoVoltar.enabled = YES;
            
            NSLog(@"%@", self.arrayDados);
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
    }
    
    



    return YES;
}






@end
