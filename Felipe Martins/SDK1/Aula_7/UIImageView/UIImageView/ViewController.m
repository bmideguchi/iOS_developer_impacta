//
//  ViewController.m
//  UIImageView
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
	
    
   
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageViewMeme release];
    [super dealloc];
}
- (IBAction)exibir:(UIButton *)sender {
    
    
    /* UIImageView
     
     É a classe utilizada para visualização de imagem em tela, recebe uma UIImage que a classe responsável por criação de uma imagem de alto nível via código
     
     */
    
    
    
    // criando uma UIImage
    
    UIImage *imagem = [UIImage imageNamed:@"meme.png"];
    
    // Pasando uma imagem como parametro para nossa imageView
    
    self.imageViewMeme.image = imagem;
    
    
    // Tirando a imagem de sistema
    [imagem release];
    
    
}

- (IBAction)ocultar:(UIButton *)sender {
    
        // Ocultando a imagem
    
    self.imageViewMeme.image = nil;
    
}













@end
