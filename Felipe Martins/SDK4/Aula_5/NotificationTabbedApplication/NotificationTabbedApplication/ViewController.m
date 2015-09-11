//
//  ViewController.m
//  NotificationTabbedApplication
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Criando o objeto do notificationCenter para termos acesso ao centro de notificações
    
    NSNotificationCenter *centroNotificacao = [NSNotificationCenter defaultCenter];
    
    // Adicionando o ouvinte da notificação
    
    [centroNotificacao addObserver:self selector:@selector(notificacaoRecebida:) name:@"minhaNotificacao" object:nil];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)notificacaoRecebida:(NSNotification *)notificacao{

    
    
    
    
    
    // Quando a notificação for recebida, colocamos o texto que foi passado em nosso dicionário na label
    
    self.labelTexto.text = [notificacao.userInfo objectForKey:@"texto"];
    
    
    

    NSLog(@"Funfou!!!!! Recebi a notificação");

}

@end
