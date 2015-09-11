//
//  ViewController.m
//  QuartzCore
//
//  Created by Felipe Martins on 16/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    /* QuartzCore é a framework responsável pela renderização avançada de objetos. Este processo é baseado na classe CALayer
     
     Todo objeto de UIView possui uma layer
     
     */
    
    
    // Setando a cor da borda
    self.viewzinha.layer.borderColor = [UIColor blackColor].CGColor;
    
    // Setando a expessura da borda
    self.viewzinha.layer.borderWidth = 7.0;
    
    // Setando o arredondamento dos cantos
    self.viewzinha.layer.cornerRadius = 55.0;
    
    // Acessando a sombra do objeto
    
    // setando a cor
    self.viewzinha.layer.shadowColor = [UIColor redColor].CGColor;
    
    
    // setamos a opacidade
    self.viewzinha.layer.shadowOpacity = 1.0;
    
    // setamos a área da sombra
    self.viewzinha.layer.shadowRadius = 20.0;
    
    
    // Setando a posição da sombra
    self.viewzinha.layer.shadowOffset = CGSizeMake(-10.0, -20.0);
    
    
    //
    
    
    self.imageViewUnica.layer.shadowColor = [UIColor blackColor].CGColor;
    self.imageViewUnica.layer.shadowOffset = CGSizeMake(10.0, 10.0);
    self.imageViewUnica.layer.shadowOpacity = 1.0;
    self.imageViewUnica.layer.cornerRadius = 20.0;
    // Para usar algumas propriedades da layer em uma imageView é interessante ativarmos a propriedade MaskToBounds
    self.imageViewUnica.layer.masksToBounds = YES;
    
    
    self.imageViewUnica.layer.borderWidth = 10.0;
    self.imageViewUnica.layer.cornerRadius = 20.0;
    self.imageViewUnica.layer.borderColor = [UIColor redColor].CGColor;
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
