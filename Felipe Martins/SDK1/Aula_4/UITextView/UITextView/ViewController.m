//
//  ViewController.m
//  UITextView
//
//  Created by Felipe Martins on 07/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Ligando o delegate
    self.texViewCadastro.delegate = self;
    
    // limpando o texto de nossa textView
    //self.texViewCadastro.text = nil;
    
    // Propriedade que habilita a edição
    self.texViewCadastro.editable = NO;
    
    
    // Método que retorna se há texto na textView
    if ([self.texViewCadastro hasText] == YES ) {
        
        NSLog(@"Mano, tem texto");
    
    }else{
    
        NSLog(@"Não tem texto");
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 

- (IBAction)mostrarCadastro:(UIButton *)sender {
// Criando uma string que será nossa ficha
NSString *textoFicha = @"Nome: Cuca \nIdade: 93 \nAltura: 1.80";
    
    // Passando a string para o texto da nossa textView
self.texViewCadastro.text = textoFicha;

}


- (void)dealloc {
    [_texViewCadastro release];
    [super dealloc];
}




#pragma mark - Métodos de UITextFieldDelegate

-(void)textViewDidChangeSelection:(UITextView *)textView{




    NSLog(@"Trocou seleção");

}





@end
