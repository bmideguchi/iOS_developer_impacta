//
//  Tela2ViewController.m
//  AssetsLibrary
//
//  Created by Felipe Martins on 02/09/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // Resgatando o nome do arquivo
    
    NSString *nome = self.arquivoRecebido.defaultRepresentation.filename;
    
    // Exibir na tela
    self.title = nome;
    
    // Resgatando a imagem na ImageView
    self.imageViewUnica.image = [UIImage imageWithCGImage:[self.arquivoRecebido.defaultRepresentation fullResolutionImage]];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
