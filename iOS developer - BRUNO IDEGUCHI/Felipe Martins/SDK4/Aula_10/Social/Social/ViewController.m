//
//  ViewController.m
//  Social
//
//  Created by Felipe Martins on 02/09/13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postarNoFace:(UIButton *)sender {
    
    NSLog(@"Postando no Face!");
    
    // Verificando se o dispositivo pode postar no Facebook
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        // Caso esteja disponível
        
        
        // Criando o controller responsável pela interação
        SLComposeViewController *controllerFacebook = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        
        // Settamos um texto inicial
        [controllerFacebook setInitialText:@"Postando no face do meu próprio App \n\n iOS rules!"];
        
        // Setando uma URL
        [controllerFacebook addURL:[NSURL URLWithString:@"http://www.impacta.com.br"]];
        
        // Setando uma imagem
        [controllerFacebook addImage:[UIImage imageNamed:@"iconApple"]];
        
        // Mostrando o controlador na tela
        [self presentViewController:controllerFacebook animated:YES completion:nil];
        
        
    }else{
    // Caso não esteja disponível
        
        
        NSLog(@"O serviço não está disponível");
    
    
    }
    
    
    
    
    
    
    
}
@end
