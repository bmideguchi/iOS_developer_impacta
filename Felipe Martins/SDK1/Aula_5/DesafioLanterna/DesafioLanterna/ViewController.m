//
//  ViewController.m
//  DesafioLanterna
//
//  Created by Felipe Martins on 12/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando a variável de controle com YES
    self.isOn = YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ligarLanterna:(UIButton *)sender {
    
    // Se a lanterna estiver ligada (fundo branco);
    if (self.isOn == YES) {
        
        // Deixamos a lanterna desligada (fundo preto)
        self.view.backgroundColor = [UIColor blackColor];
        // E notificamos para nossa vaiável de controle que está desligado
        self.isOn = NO;
        
    }else{
        // Se a lanterna não estiver ligada (fundo preto)
    
        // Ligamos a lanterna.
        self.view.backgroundColor = [UIColor whiteColor];
        
        // Setamos nossa propriedade como YES (lanterna ligada)
        self.isOn = YES;
    }
    
    
}

#pragma mark - Métodos de Orientação

// Configura as orientações suportadas
-(NSUInteger)supportedInterfaceOrientations{


    return UIInterfaceOrientationMaskAll;

}


// Retorna a orientação do app
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    // Se o iphone estiver de ladinho
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        
        
            // desabilitamos o botão
        self.botaoLanterna.enabled = NO;
        
        
    }else{
        // se o iphone não estiver de lado.
    
        self.botaoLanterna.enabled = YES;
    
    
    }


}



- (void)dealloc {
    [_botaoLanterna release];
    [super dealloc];
}
@end
