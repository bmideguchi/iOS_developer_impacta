//
//  ViewController.m
//  TextFieldAccessory
//
//  Created by Felipe Martins on 02/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando uma toolbar para ser nossa barra complementar
    
    UIToolbar *barraComplementar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 0, 40)];
    
    // Aplicando a barra complementar na minha textField
    
    self.minhaTextField.inputAccessoryView = barraComplementar;
    
    // criando os botões para nossa barra complementar
    UIBarButtonItem *botaoAvancar = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(avancar)];
    
    UIBarButtonItem *botaoVoltar = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(voltar)];
    
    UIBarButtonItem *botaoDone = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
    
    UIBarButtonItem *espacamento = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    
    // Criando o aray para armazenar os botões
    NSArray *arrayBotoes = @[botaoVoltar,botaoAvancar,espacamento,botaoDone];
    
    
    // Colocando os botões na nossa barra complementar
    [barraComplementar setItems:arrayBotoes];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas ações

// Métodos que serão disparadas pelos botões em nossa barra complementar no teclado

-(void)avancar{


    NSLog(@"Clicou Avancar");
}


-(void)voltar{

    NSLog(@"Clicou Voltar");


}


-(void)done{

    NSLog(@"Clicou done");


}







@end
