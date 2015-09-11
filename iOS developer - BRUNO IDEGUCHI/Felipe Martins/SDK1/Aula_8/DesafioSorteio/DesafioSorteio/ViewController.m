//
//  ViewController.m
//  DesafioSorteio
//
//  Created by Felipe Martins on 19/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// ligando o textFieldNome ao delegate
    self.textFieldNome.delegate = self;
    
    // Allocando e iniciando nosso aray que irá conter as pessoas.
    self.arrayParticipantes = [[NSMutableArray alloc]init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_textFieldNome release];
    [_labelSorteado release];
    [super dealloc];
}


#pragma mark - Minhas Ações

- (IBAction)sortear:(UIButton *)sender {
    
    // Caso tenha participantes concorrendo ele entrará no if
    if (self.arrayParticipantes.count > 0) {
        
        // Sorteamos um número de zero até a quantidade de pessoas no array - 1;
        int sorteado = arc4random() % self.arrayParticipantes.count;
        
        // Verificando se deu certo o sorteio
        NSLog(@"sorteado: %i", sorteado);
        
        // pegamos o numero sorteado e mostramos o elemento correspondente no array
        self.labelSorteado.text = [self.arrayParticipantes objectAtIndex:sorteado];
    }else{
    
    self.labelSorteado.text = @"Insere alguem awe!";

    
    }
    
    
    
}

- (IBAction)apagar:(UIButton *)sender {
    
    // Apagamos todos os itens do array
    [self.arrayParticipantes removeAllObjects];
    
    // Limpamos a label
    self.labelSorteado.text = nil;
    
}

#pragma mark - Métodos de UITextFieldDelegate

// Este método roda quando o usuário pressiona o return do teclado
-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    // Se o texto no textField for maior que 0 (h[a algo digitado)
    if (self.textFieldNome.text.length > 0) {
        
        // Criamos uma variável para receber o texto
        NSString *nome = self.textFieldNome.text;
        
        // Adicionamos a mesma em nosso array
        
        [self.arrayParticipantes addObject:nome];
        
        // Após adicionar o objeto, limpamos a caixa de texto
        
        self.textFieldNome.text = nil;
        
        NSLog(@"%@", [self.arrayParticipantes componentsJoinedByString:@"\n"]);
        
        self.labelSorteado.text = nil;
        
    }else{
    
    
    
    self.labelSorteado.text = @"Digite algo";
    
    
    }
    


    return YES;

}


@end
