//
//  TelaTextoViewController.m
//  DesafioMediaPlayer
//
//  Created by Felipe Martins on 14/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TelaTextoViewController.h"

@interface TelaTextoViewController ()

@end

@implementation TelaTextoViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // Desabilitando a edição da nossa textView
    self.textViewUnica.editable = NO;
    
    // Criando um caminho até o arquivo de texto
    NSString *pathArquivo = [[NSBundle mainBundle] pathForResource:@"texto" ofType:@"txt"];
    
    // Iniciando uma sntring com o documento
    NSString *texto = [[NSString alloc]initWithContentsOfFile:pathArquivo encoding:NSUTF8StringEncoding error:nil];
    
    // Passando o texto para nossa textView
    self.textViewUnica.text = texto;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
