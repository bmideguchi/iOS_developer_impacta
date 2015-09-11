//
//  ViewController.m
//  NSArray
//
//  Created by Felipe Martins on 12/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    /* NSArray - É uma classe responsável por criar arrays em Objective-C. Faz parte do Framework Foundation.
     
     
     Assim como arrays em ANSI-C seus índices são acessados iniciando em ZERO.
     
     
     É importante ressaltar que  um objeto NSArray armazena apenas dados ORIENTADOS A OBJETO e são IMUTAVEIS, ou seja uma vez declarado e iniciado não possuem métodos de remoção ou adição de objetos posteriormente
     
     */
    
    
    // Allocando e iniciando um NSArray
    NSArray *arrayNomes = [[NSArray alloc]initWithObjects:@"Josefa",@"Garibaldo", @"Lilica", nil];
    
    // Exibindo a quantidade de objetos através do método count.
    
    NSLog(@"A quantidade de objetos no array é: %i",[arrayNomes count]);
    
    // Exibindo um objeto através de seu indice
    
    NSLog(@"O objeto no índice zero é: %@",[arrayNomes objectAtIndex:2]);
    
    // Exibindo o indice através do objeto
    
    NSLog(@"Indice: %i", [arrayNomes indexOfObject:@"Lilica"]);
    
    //Exibindo o último item de uma array
    
    NSLog(@"Último objeto: %@", [arrayNomes lastObject]);
    
    // Método que retorna se há um determinado item no array [containsObject];
    
    // Caso o objeto exista
    if ([arrayNomes containsObject:@"Priscila"]) {
        
        NSLog(@"Objeto encontrado");
        
    }else{
        // Caso o objeto não exista
    
        NSLog(@"Objeto não encontrado");
    
    }
    
    
    // criando uma string A partir de um objeto do array.
    NSString *nome = [arrayNomes objectAtIndex:0];
    // Exibindo esta string
    NSLog(@"%@", nome);
    
    // Criando um laço que mostre todos os objetos do array.
    for (int i = 0; i <= arrayNomes.count -1; i++) {
        
        NSLog(@"%@", [arrayNomes objectAtIndex:i]);
        
    }
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
