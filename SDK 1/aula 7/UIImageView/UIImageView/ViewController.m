//
//  ViewController.m
//  UIImageView
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (IBAction)exibir:(UIButton *)sender {
    
    //UIImageView - É a classe utilizada para visualização de imagem em telaa. Recebe uma UIImage que é a classe responsável por criação de uma imagem de alto nível via código.
    
    //Criando uma UIImage:
    UIImage *imagem = [UIImage imageNamed:@"meme"];
    
    //Passando uma imagem com parâmetro para nossa ImageView
    self.imageViewMeme.image = imagem;
    
    //Tirando a imagem de sistema

}





- (IBAction)Ocultar:(UIButton *)sender {
    
    //Ocultando a imagem
    self.imageViewMeme.image = nil;
    
}



@end
