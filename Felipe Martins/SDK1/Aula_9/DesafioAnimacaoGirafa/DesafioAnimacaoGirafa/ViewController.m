//
//  ViewController.m
//  DesafioAnimacaoGirafa
//
//  Created by Felipe Martins on 21/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // iniciando o inicio do começo do nosso segmented sem seleção.
    
    self.segmentedMalandro.selectedSegmentIndex = -1;
    
	// Iniciando e allocando o Array
    
    self.arrayImagens = [[NSMutableArray alloc]init];
    
    // For  que cria as imagens a partir de um nome (NString)
    for (int i = 1; i <= 13; i++) {
        
        NSString *nomeImagem = [NSString stringWithFormat:@"frame-%i.gif", i];
        
        // Criando e adicionando a imagem no array
        
        [self.arrayImagens addObject:[UIImage imageNamed:nomeImagem]];
        
        
    }
    
    NSLog(@"%@", self.arrayImagens);
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageView1 release];
    [_imageView2 release];
    [_imageView3 release];
    [_imageView4 release];
    [_segmentedMalandro release];
    [super dealloc];
}

#pragma mark - Minhas Ações

- (IBAction)animar:(UISegmentedControl *)sender {
    
    // Verificando qual índice que está selecionado e animamos a partir dele
    switch (sender.selectedSegmentIndex) {
       
        case 0:
            
            [self prepararAnimacao:self.imageView1];
            
            break;
            
        case 1:
            
            [self prepararAnimacao:self.imageView2];
            
            break;
            
        case 2:
            
            [self prepararAnimacao:self.imageView3];
            
            break;
            
        case 3:
            
            [self prepararAnimacao:self.imageView4];
            
            break;
        
            
        default:
            break;
    }
    
    


}

// Criando um método próprio para se encarregar da animação que receberá como parâmetro a imageView que será animada
-(void)prepararAnimacao:(UIImageView *)imageViewParaAnimar{
    // Setando a duração da animação que esta sendo passada via parâmetro

    imageViewParaAnimar.animationDuration = 3.0;
    
    // Setando a quantidade de vezes que a animação será animada
    imageViewParaAnimar.animationRepeatCount = 1;
    
    // Setando o array que proverá as imagens
    imageViewParaAnimar.animationImages = self.arrayImagens;
    
    
    // Iniciar a animação
    [imageViewParaAnimar startAnimating];
    
    

}

@end
