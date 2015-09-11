//
//  ViewController.m
//  notificationTabbedApplication
//
//  Created by NoiteA on 21/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Criando o objeto notificationCenter para termos acesso ao centro de notificações
    NSNotificationCenter *centroNotificacao = [NSNotificationCenter defaultCenter];
    
    //Adicionando o ouvinte da notificação
    [centroNotificacao addObserver:self selector:@selector(notificacaoRecebida:) name:@"minhaNotificacao" object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)notificacaoRecebida:(NSNotification *)notification{
    
    NSLog(@"Funcionou!");
    
    //Quando a notificação for recebida, colocamos o texto que foi passado em nosso dicionário
    
    self.labelTexto.text = [notification.userInfo objectForKey:@"texto"];

}

@end
