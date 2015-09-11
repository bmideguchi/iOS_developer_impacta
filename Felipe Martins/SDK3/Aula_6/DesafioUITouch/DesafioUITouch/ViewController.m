//
//  ViewController.m
//  DesafioUITouch
//
//  Created by Felipe Martins on 31/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // habilitando a interação da nossa ImageView
    self.imageViewUnica.userInteractionEnabled = YES;
    
    // Iniciando nossa imageView com a carinha feliz
    self.imageViewUnica.image = [UIImage imageNamed:@"feliz.png"];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Métodos de UITouch



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    // Alocando o objeto em nossa variável  de toque
    
    self.toque = [touches anyObject];
    
    
    // Verificando se o objeto tocado é a nossa ImageViewUnica
    
    if ([self.toque.view isEqual:self.imageViewUnica]) {
        // caso seja a nosa imageViewUnica
        
        // colocamos a carinah de feliz
        self.imageViewUnica.image = [UIImage imageNamed:@"bravo.png"];
        
        
    }
    
    
    

}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

    // Alocando o objeto em nossa variável  de toque
    
    self.toque = [touches anyObject];
    
    
    // Verificando se o objeto tocado é a nossa ImageViewUnica
    
    if ([self.toque.view isEqual:self.imageViewUnica]) {
        // caso seja a nosa imageViewUnica
        
        // colocamos a carinah de feliz
        self.imageViewUnica.image = [UIImage imageNamed:@"feliz.png"];
        
        
    }



}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{


    // Allocando o objeto tocado
    self.toque = [touches anyObject];
    
    // Criando um CGPoint para receber a posição tocada
    
    CGPoint posicaoTocada = [self.toque locationInView:self.view];
    
    //Colocando em nossas labels.
    self.labelX.text = [NSString stringWithFormat:@"%.0f", posicaoTocada.x];
    self.labelY.text = [NSString stringWithFormat:@"%.0f", posicaoTocada.y];

    
    // Verificando se a imageView é a que está sendo tocada
    if ([self.toque.view isEqual:self.imageViewUnica]) {
        // caso seja
        
        // movendo de acordo com o toque.
        
        self.imageViewUnica.center = posicaoTocada;
        
    }
    
    
    // Controlando a cor do Background
    if (posicaoTocada.x > 160) {
        
        
        
        self.view.backgroundColor = [UIColor yellowColor];
        
    }else{
    
        self.view.backgroundColor = [UIColor whiteColor];
    
    
    }
    


}






@end
