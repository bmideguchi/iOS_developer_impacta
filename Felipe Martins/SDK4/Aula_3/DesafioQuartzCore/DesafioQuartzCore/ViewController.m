//
//  ViewController.m
//  DesafioQuartzCore
//
//  Created by Felipe Martins on 19/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    self.imageViewUnica.layer.masksToBounds = YES;
    
    // Forçando os métodos para que o sistema já inicie configurado
    
    [self configurarImagem:nil];
    [self configurarViewzinha:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)configurarImagem:(UISlider *)sender {
    
    // Configurando os ajustes da imagem
    
    float arredondamentoCantos = self.sliderCornerImagem.value * 50;
    float espessuraBorda = self.sliderBorderImagem.value * 10;
    float posicaoSombra = self.sliderShadowImagem.value * 10;
    
    
    //
    
    self.imageViewUnica.layer.cornerRadius = arredondamentoCantos;
    self.imageViewUnica.layer.borderWidth = espessuraBorda;
    
    self.imageViewUnica.layer.shadowOpacity = 1.0;
    self.imageViewUnica.layer.shadowColor = [UIColor blackColor].CGColor;
    

    self.imageViewUnica.layer.shadowOffset = CGSizeMake(posicaoSombra, posicaoSombra);
    
  
    
}

- (IBAction)configurarViewzinha:(UISlider *)sender {
    
    float arredondamentoCantos = self.sliderCornerViewzinha.value * 50;
    float espessuraBorda = self.sliderBorderViewzinha.value * 10;
    float posicaoSombra = self.sliderShadowViewzinha.value * 10;
    
    
    self.viewzinha.layer.cornerRadius = arredondamentoCantos;
    self.viewzinha.layer.borderWidth = espessuraBorda;
    
    
    self.viewzinha.layer.shadowOpacity = 1.0;
    self.viewzinha.layer.shadowColor = [UIColor redColor].CGColor;
    self.viewzinha.layer.shadowOffset = CGSizeMake(posicaoSombra, posicaoSombra);
    
    
    
}
@end
