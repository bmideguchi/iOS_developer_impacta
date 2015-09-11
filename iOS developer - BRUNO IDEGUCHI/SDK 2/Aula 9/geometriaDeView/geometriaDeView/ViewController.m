//
//  ViewController.m
//  geometriaDeView
//
//  Created by NoiteA on 15/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Criando uma view na unha!
    UIView *minhaViewzinha = [[UIView alloc]init];
    
    //Setando o frame da view que acabamos de criar
    //                                 X   Y  Larg Alt
    //                                 |   |   |    |
    minhaViewzinha.frame = CGRectMake(20, 20, 200, 200);
    
    //Setando um background na view que acabamos de criar
    minhaViewzinha.backgroundColor = [UIColor colorWithRed:100/255.0 green:20/255.0 blue:47/255.0 alpha:1.0];
    
    //Como estamos trabalhando e criando tudo via código, precisamos adicionar manualmente o novo objeto a interface.
    //Neste caso, estamos adicionando a nossa view principal.
    [self.view addSubview:minhaViewzinha];
    
    
    
    
    //Criando uma label via código
    UILabel *minhaLabelzinha = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    minhaLabelzinha.text = @"Bruno";
    minhaLabelzinha.backgroundColor = [UIColor yellowColor];
    [minhaViewzinha addSubview:minhaLabelzinha];
    
    
    
    
    //Criando um botão
    UIButton *butao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    butao.frame = CGRectMake(150, 100, 40, 40);
    [self.view addSubview:butao];
    [butao setTitle:@"A" forState:UIControlStateNormal];
    [butao setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)metodoParaOButao{
    NSLog(@"Funfou!");
}


@end
