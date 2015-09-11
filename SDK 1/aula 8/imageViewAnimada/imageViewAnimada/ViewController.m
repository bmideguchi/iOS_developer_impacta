//
//  ViewController.m
//  imageViewAnimada
//
//  Created by NoiteA on 19/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    /*
     
     IMAGE VIEW ANIMADA \o/
     
     Uma das formas de realizar animação é usando uma UIImageView. Um elemento que permite também a simples exibição de uma imagem
     
     */
    
    //Allocando e iniciando o arrayImagens
    self.arrayImagens = [[NSMutableArray alloc]init];
    
    
    //Laço que criará os nomes das imagens
    for (int i = 0; i <= 39; i++){
        
        //Criando o nome
        NSString *nomeImagem = [NSString stringWithFormat:@"imagem_%i", i];
        
        //Criando a UIImage a partir do nome formado
        UIImage *imagem = [UIImage imageNamed:nomeImagem];
        
        [self.arrayImagens addObject:imagem];
        
    }

    //Propriedade que define o objeto que fornecerá as imagens para animação
    self.imageViewUnica.animationImages = self.arrayImagens;

    //Propriedade que controla a velocidade que a animação será demonstrada:
    self.imageViewUnica.animationDuration = 5.0;

    //propriedade que controla a quantidade de repetições da animação
    self.imageViewUnica.animationRepeatCount = 1;

    //Definindo a última imagem a ser exibida
    self.imageViewUnica.image = [self.arrayImagens objectAtIndex:7];

    //Método para iniciar a animação
    [self.imageViewUnica startAnimating];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageViewUnica release];
    [super dealloc];
}
@end
