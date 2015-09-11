//
//  ViewController.m
//  UIscrollViewDinamica
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
	
    
    //Utilizando o conceito de scrollView e objetos dinâmicos podemos criar uma interface também dinâmica, como veremos:
    
    //Primeiro criaremos uma variável para controlar a quantidade de itens
    int quantidadeDeItens = 5;
    
    //Criando variáveis para definir a largura e altura do objeto
    float larguraDoItem = 200.0;
    float alturaDoItem = 50.0;
    
    //Criando uma variável para definir o espaçamento
    float separacaoDosItens = 20.0;
    
    //Criando uma variável que será o tamanho da nossa scrollView baseado na altura, quantidade e espaçamento dos itens
    float tamanhoDaScrollView = (alturaDoItem + separacaoDosItens) * quantidadeDeItens;
    
    //Setando o tamanho interno da scrollView
    self.minhaScrollViewDinamica.contentSize = CGSizeMake(320, tamanhoDaScrollView);
    
    //Criando os itens através de um FOR para que possamos controlar a quantidade dinamicamente
    for (int i = 0; i < quantidadeDeItens; i++){
        //Neste caso o FOR irá rodar até a quantidade de itens especificada na variável
        
        //Para cada vez que o loop roda, criamos uma label dinamicamente
        UILabel *labelDinamica = [[UILabel alloc]initWithFrame:CGRectMake(20, (alturaDoItem + separacaoDosItens)*i, larguraDoItem, alturaDoItem)];
        
        labelDinamica.backgroundColor = [UIColor grayColor];
        
        labelDinamica.text = @"label";
        
        //Adicionando a nossa scrollView
        [self.minhaScrollViewDinamica addSubview:labelDinamica];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
