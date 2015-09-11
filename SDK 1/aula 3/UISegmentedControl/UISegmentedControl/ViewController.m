//
//  ViewController.m
//  UISegmentedControl
//
//  Created by NoiteA on 05/06/13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//(id)sender é quem está enviando o comando

-(void)alterarSegmented:(UISegmentedControl *)sender{
    
    /*
     
     Um segmented control funciona como radio buttons. A escolha é baseada em índices, assim como um array, iniciando do índice 0.
     
     por padrão utilizamos o evento value changed.
     
     */
    
    //Criando uma variável que receberá o indice selecionado
    int indice = sender.selectedSegmentIndex;
    
    //Exibindo em console o indice selecionado
    NSLog(@"O índice selecionado foi: %i", indice);
    
    
}

@end

#pragma mark - Minhas ações

//Esse metodo será disparado pelo nosso segmented control
