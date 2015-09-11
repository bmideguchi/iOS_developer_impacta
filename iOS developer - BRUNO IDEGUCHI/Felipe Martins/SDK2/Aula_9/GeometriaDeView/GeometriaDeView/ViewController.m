//
//  ViewController.m
//  GeometriaDeView
//
//  Created by Felipe Martins on 15/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando uma view na unha!
    
    UIView *minhaViewzinha = [[UIView alloc]init];
    
    // Setando o frame da view que acabamos de criar
    
    
    
    //                                 X   Y   largura      altura
    //                                 |   |    |           |
    minhaViewzinha.frame = CGRectMake(50, 20,  200,        200);
    
    // Setando um background da view que acabamos de criar
    minhaViewzinha.backgroundColor = [UIColor colorWithRed:100/255.0 green:20/255.0 blue:47/255.0 alpha:1.0];
    
    
    // Como estamos trabalhando e criando tudo via código, precisamos adicionar manualmente o novo objeto a interface.
    // Neste caso estamos adicionando a nossa view principal.
    
    [self.view addSubview:minhaViewzinha];
    
    
    
    //-------------------------------------------------
    
    
    // Criando um label via código
    UILabel *minhaLabelzinha = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    minhaLabelzinha.text = @"Felipe";
    minhaLabelzinha.backgroundColor = [UIColor yellowColor];
    [minhaViewzinha addSubview:minhaLabelzinha];
    
    
    //-----------------------------------------------
    
    
    // Criando um botão via código
    
    UIButton *butao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    butao.frame = CGRectMake(150, 100, 40, 40);
    [butao setTitle:@"A" forState:UIControlStateNormal];
    [butao setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [butao addTarget:self action:@selector(metodoParaOButao) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:butao];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)metodoParaOButao{

    NSLog(@"Funfou!!");

}

@end
