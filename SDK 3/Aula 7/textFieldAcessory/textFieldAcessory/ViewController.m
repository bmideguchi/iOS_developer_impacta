//
//  ViewController.m
//  textFieldAcessory
//
//  Created by NoiteA on 02/08/13.
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
    
    //Criando uma toolbar para ser nossa barra complementar
    
    UIToolbar *barraComplementar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 0, 40)];

    //Aplicando a barra complementar na text field
    self.minhaTextField.inputAccessoryView = barraComplementar;
    
    //Criando os botões para nossa barra complementar
    UIBarButtonItem *botaoAvancar = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(avancar)];
    UIBarButtonItem *botaoVoltar = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(voltar)];
    UIBarButtonItem *botaoDone = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
    UIBarButtonItem *esppacamento = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    //Criando o array para armazenar os botões e colocando os botões na barra
    NSArray *arrayBotoes = @[botaoVoltar, esppacamento, botaoDone, esppacamento, botaoAvancar];
    
    [barraComplementar setItems:arrayBotoes];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - MINHAS AÇÕES

//Métodos que serão disparados pelos botões em nossa barra complementar no teclado

-(void)avancar{
    NSLog(@"Clicou Avançar");
}


-(void)voltar{
    NSLog(@"Clicou Voltar");
}


-(void)done{
    NSLog(@"Clicou Done");    
}

@end
