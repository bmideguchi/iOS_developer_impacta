//
//  ViewController.m
//  NSMutableArray
//
//  Created by NoiteA on 14/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    /*NSMutableArray - É uma classe para armazenamento de dados em uma estrutura de array como o NSArray, só que MUTÁVEL (permite alterações de conteúdo após a inicialização).*/

    //Declarando, alocando e iniciando um NSMutableArray
    NSMutableArray *meuArrayMutavel = [[NSMutableArray alloc]initWithObjects:@"Florentina", nil];
    
    //Método que adiciona um objeto em nosso NSMutableArray:
    [meuArrayMutavel addObject:@"Lilica"];
    [meuArrayMutavel addObject:@"Garibaldo"];
    
    //Método que exibe a quantidade de objetos
    NSLog(@"A quantidade de itens é: %i", [meuArrayMutavel count]);
    NSLog(@"------------------------------\n\n");
    
    //Método que exibe todos os objetos existentes em um array, separados por uma string qualquer
    NSLog(@"Conteúdo do array: %@", [meuArrayMutavel componentsJoinedByString:@"-"]);
    NSLog(@"------------------------------\n\n");
    
    //Alterando os dados já existentes
    [meuArrayMutavel replaceObjectAtIndex:0 withObject:@"Josefina"];
    NSLog(@"Conteúdo do array: %@", [meuArrayMutavel componentsJoinedByString:@"-"]);
    NSLog(@"------------------------------\n\n");
    
    //Método que remove um objeto específico do nosso array
    [meuArrayMutavel removeObjectAtIndex:0];
    NSLog(@"Conteúdo do array: %@", [meuArrayMutavel componentsJoinedByString:@"-"]);
    NSLog(@"------------------------------\n\n");
    
    //Método que remove todos os objetos de um array
    [meuArrayMutavel removeAllObjects];
    NSLog(@"Quantidade de objetos no array: %i", meuArrayMutavel.count);
    NSLog(@"------------------------------\n\n");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
