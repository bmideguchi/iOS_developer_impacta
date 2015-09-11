//
//  Tela2ViewController.m
//  DesafioJSON
//
//  Created by Felipe Martins on 30/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    NSLog(@"%@", self.dicionarioPessoa);
    
    self.labelFieldNome.text = [self.dicionarioPessoa objectForKey:@"nome"];
    self.labelIdade.text = [[self.dicionarioPessoa objectForKey:@"idade"] stringValue];
    self.labelAltura.text = [[self.dicionarioPessoa objectForKey:@"altura"] stringValue];
    self.labelSolteiro.text = [self.dicionarioPessoa objectForKey:@"solteiro"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
