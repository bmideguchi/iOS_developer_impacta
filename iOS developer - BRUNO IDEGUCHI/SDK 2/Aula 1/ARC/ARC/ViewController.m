//
//  ViewController.m
//  ARC
//
//  Created by NoiteA on 26/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Colocando um placeholder em nossa textField
    self.textFieldUnica.placeholder = @"Digite seu nome";
    
    //Alinhando o texto ao centro
    self.textFieldUnica.textAlignment = NSTextAlignmentCenter;
    
    //Limpando nossa label
    self.labelValorWeak.text = self.labelValorStrong.text = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Minhas ações:

- (IBAction)mostrar:(UIButton *)sender {

    if (self.textFieldUnica.text.length > 0) {
        
        //Criamos uma variável que recebe o texto.
        NSString *nome = self.textFieldUnica.text;
        
        //Colocamos o texto em nossa propriedade de ligação forte
        self.nomeStrong = [[NSString alloc]initWithString:nome];
        
        //Colocamos o texto em nossa propriedade de ligação fraca. O próprio sistema já nos gera um alerta avisando da inviabilidade da ação
        self.nomeWeak = [[NSString alloc]initWithString:nome];
        
        //Colocando os textos em nossas labels
        self.labelValorStrong.text = self.nomeStrong;
        self.labelValorWeak.text = self.nomeWeak;
        
        NSLog(@"Nome Strong: %@", self.labelValorStrong.text);
        NSLog(@"Nome Weak: %@", self.labelValorWeak.text);
    }
}

@end
