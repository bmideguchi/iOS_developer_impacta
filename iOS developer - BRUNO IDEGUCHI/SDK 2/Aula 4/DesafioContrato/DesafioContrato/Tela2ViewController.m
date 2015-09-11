//
//  Tela2ViewController.m
//  DesafioContrato
//
//  Created by Felipe Martins on 05/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // desabilitando a edição da textView
    self.textViewContrato.editable = NO;
    
    // Criando variáveis pra receber os dados passados no NSDictionary.
    
    NSString *nome = [self.dicionarioDadosTelaPrincipal objectForKey:@"nome"];
    NSString *RG = [self.dicionarioDadosTelaPrincipal objectForKey:@"RG"];
    NSString *cidade = [self.dicionarioDadosTelaPrincipal objectForKey:@"cidade"];
    
    // Mostrando o texto que será exibido no contrato
    self.textViewContrato.text = [NSString stringWithFormat:@"Eu %@, portador do RG: %@, declaro não ser favorável a empresa Samsung e nem a seus respectivos celulares com o sistema operacional que não deve ser nomeado por motivos claros.\n\n Declaro amar e respeitar, na alegria e na tristeza, na saúde e na doença, na riqueza e na pobreza meu iOS Device até que a morte nos separe.\n\nFirmo este presente contrato em frente as testemunhas que hoje estão presentes em sala e meu querido e super legal instrutor.\n\n %@, %@.",nome, RG, nome, cidade];
    
    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    
    
    
}

@end
