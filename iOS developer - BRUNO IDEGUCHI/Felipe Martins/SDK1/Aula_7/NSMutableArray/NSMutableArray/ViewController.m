//
//  ViewController.m
//  NSMutableArray
//
//  Created by Felipe Martins on 14/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    /* NSMutableArray - É uma classe para armazenamento de dados em uma estrutura de array assim como o NSArray. Porém o nosso NSMutableArray é MUTÁVEL, ou seja, permite alterações de conteúdo após sua inicialização e contém métodos paras estas alterações.
     */
    
    
    // Declarando, allocando e iniciando um NSMutableArray
    
    NSMutableArray *meuArrayMutavel = [[NSMutableArray alloc]initWithObjects:@"Florentina", nil];
    
    // Método que adiciona um objeto em nosso NSMutableArray
    [meuArrayMutavel addObject:@"Lilica"];
    [meuArrayMutavel addObject:@"Garibaldo"];
    
    // Método que exibe a quantidade de objetos
    NSLog(@"A quantidade de itens é: %i", [meuArrayMutavel count]);
    
    NSLog(@"---------------------------------------------------------");
    
    // Método que exibe todos os objetos existentes em um array, separados por uma string qualquer
    
    NSLog(@"Conteudo do array: %@", [meuArrayMutavel componentsJoinedByString:@"\n"]);
    
    NSLog(@"---------------------------------------------------------");
    
    // Alterando os objetos já existentes no Array
    
    [meuArrayMutavel replaceObjectAtIndex:0 withObject:@"Josefina"];
    
     NSLog(@"Conteudo do array: %@", [meuArrayMutavel componentsJoinedByString:@"\n"]);
    
     NSLog(@"---------------------------------------------------------");
    
    
    // Método que remove um objeto específico do array
    
    [meuArrayMutavel removeObjectAtIndex:0];
    
    NSLog(@"Conteudo do array: %@", [meuArrayMutavel componentsJoinedByString:@"\n"]);
    
    NSLog(@"---------------------------------------------------------");
    

    // Metodo que remove o último objeto de um Array.
    
    [meuArrayMutavel removeLastObject];
    
    NSLog(@"Conteudo do array: %@", [meuArrayMutavel componentsJoinedByString:@"\n"]);
    
    NSLog(@"---------------------------------------------------------");
    
    
    // Método que remove todos os itens de um Array
    
    [meuArrayMutavel removeAllObjects];
    
    NSLog(@"Quantidade de Objetos no Array: %i", meuArrayMutavel.count);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
