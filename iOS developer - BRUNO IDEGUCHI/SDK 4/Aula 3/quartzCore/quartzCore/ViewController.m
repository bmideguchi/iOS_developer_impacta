//
//  ViewController.m
//  quartzCore
//
//  Created by NoiteA on 16/08/13.
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
     ===============| QUARTZ CORE |===============
     
     QuartzCore é a framework responsável pela renderização avançada de objetos. Este processo é baseado na classe CALayer.
     
     Todo objeto de UIView possui uma layer
     
     */
    
    //Setando a cor da borda
    self.viewzinha.layer.borderColor = [UIColor blackColor].CGColor;
    
    //Setando a espessura da borda
    self.viewzinha.layer.borderWidth = 7.0;
    
    //Setando o arredondamento dos cantos
    self.viewzinha.layer.cornerRadius = 30.0;
    
    //Setamos a cor da sombra
    self.viewzinha.layer.shadowColor = [UIColor redColor].CGColor;
    
    //Setamos a opacidade
    self.viewzinha.layer.shadowOpacity = 1.0;
    
    //Setamos o raio
    self.viewzinha.layer.shadowRadius = 20.0;
    
    //Setamos a posição da sombra
    self.viewzinha.layer.shadowOffset = CGSizeMake(10.0, 20.0);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
