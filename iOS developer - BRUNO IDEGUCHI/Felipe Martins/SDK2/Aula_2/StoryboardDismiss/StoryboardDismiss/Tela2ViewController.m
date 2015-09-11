//
//  Tela2ViewController.m
//  StoryboardDismiss
//
//  Created by Felipe Martins on 28/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)voltarSemSegue:(UIButton *)sender {
    
    // Usando o método abaixo podemos voltar a tela que origem a chamada de nossa tela atual, sem que as informações sejam perdidas, pois nossa tela não é recarregada.
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}







@end
