//
//  ViewController.m
//  UISegmentedControl
//
//  Created by Felipe Martins on 05/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Minhas Ações

// Este método será disparado por nosso segmentedControl
-(void)alterarSegmented:(UISegmentedControl *)sender{

    /* Um Segmented Control funciona como "radio buttons". Apenas uma escolha (por padrão) pode ser feita por vez. A escolha é baseada em índices assim como um array iniciando do índice zero.
    
     Por padrão utilizamos o evento value changed.
     
*/
    // criando uma variável que receberá o índice selecionado
    int indice = sender.selectedSegmentIndex;

    // Exibindo em console o índice selecionado

    NSLog(@"O índice selecionado foi: %i", indice);

    
    
    
}






@end
