//
//  ViewController.m
//  social
//
//  Created by NoiteA on 02/09/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
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

- (IBAction)postarNoFacebook:(UIButton *)sender {
    
    NSLog(@"Postando no face!");
    
    //Verificando se o dispositivo pode postar no facebook
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        //Criando o controller responsável pela interação
        SLComposeViewController *controllerFacebook = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        //Setando um texto inicial
        [controllerFacebook setInitialText:@"Postando no facebook do meu próprio app - teste"];
        
        //Setando uma URL
        [controllerFacebook addURL:[NSURL URLWithString:@"http://www.impacta.com.br"]];
        
        //Setando uma imagem
        [controllerFacebook addImage:[UIImage imageNamed:@"iconApple"]];
        
        //Mostrando o controlador na tela
        [self presentViewController:controllerFacebook animated:YES completion:nil];
        
    }else{
        NSLog(@"O serviço não está disponível");
    }
    
}
@end
