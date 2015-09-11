//
//  ViewController.m
//  UIScrollView
//
//  Created by NoiteA on 24/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    //Propriedade que permite a alteração do tamanho interno da nossa scrollview
    self.minhaScrollView.contentSize = CGSizeMake(320, 700);
    
    //Para inserir um item abaixo da tela padrão, fazemos a inserção via código
    UILabel *labelFeitaViaCodigo = [[UILabel alloc]initWithFrame:CGRectMake(10, 500, 200, 100)];
    labelFeitaViaCodigo.backgroundColor = [UIColor orangeColor];
    labelFeitaViaCodigo.text = @"Fora da visão padrão";
    labelFeitaViaCodigo.textAlignment = NSTextAlignmentCenter;
    
    //Adicionando a label a scrollView
    [self.minhaScrollView addSubview:labelFeitaViaCodigo];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
