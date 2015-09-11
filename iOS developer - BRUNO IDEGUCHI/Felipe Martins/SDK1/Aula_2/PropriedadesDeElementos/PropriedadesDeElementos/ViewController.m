//
//  ViewController.m
//  PropriedadesDeElementos
//
//  Created by Felipe Martins on 03/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Alterando a propriedade de Background de nossa view
    self.view.backgroundColor = [UIColor blueColor];
    
    // Definindo o texto e a cor da fonte para a labelNome.
    self.labelNome.textColor = [UIColor greenColor];
    self.labelNome.text = @"Lilica";
    
    // definindo o texto e a cor da fonte para a labelIdade.
    self.labelIdade.text = @"92";
    self.labelIdade.textColor = [UIColor yellowColor];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações


-(void)clicarBotaoNome:(id)sender{

    // Alterando as propriedades de nossa labelNome.
    
    self.labelNome.text = @"Felipe";
    self.labelNome.textColor = [UIColor blackColor];
    self.labelNome.textAlignment = NSTextAlignmentCenter;
    
    // Alterando a propriedade de backGround da nossa labelNome
    
    self.labelNome.backgroundColor = [UIColor greenColor];
}



-(void)clicarBotaoIdade:(id)sender{

// Aterando as propriedades da nossa labelIdade
    
    self.labelIdade.text = @"67";
    self.labelIdade.textColor = [UIColor redColor];
    
// Alterando a propriedade de background da nossa labelIdade através de um RGB
    
    float red, green, blue;
    
    red = 190.0/255.0;
    green = 127.0/255.0;
    blue = 189.0/255.0;
    
    NSLog(@"Red: %f, Green: %f, Blue: %f",red,green,blue);
    
    self.labelIdade.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];

}



@end
