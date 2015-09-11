//
//  Tela2ViewController.m
//  NotificationTabbedApplication
//
//  Created by Felipe Martins on 21/08/13.
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

- (IBAction)dispararNotificacao:(UIButton *)sender {
    
    // Criando um objeto do notificationCenter
    
    NSNotificationCenter *centroNotificacao = [NSNotificationCenter defaultCenter];
    
    
    // Criando um dicionario de dados que será enviado juntamente com a notificação
    
    NSDictionary *dicionarioDados = @{@"texto": self.textFieldUnica.text};
    
    // Método que dispara uma notificação
    
    [centroNotificacao postNotificationName:@"minhaNotificacao" object:nil userInfo:dicionarioDados];
    
    
    // Baixando o teclado
    
    [self.textFieldUnica resignFirstResponder];
    
    
    
    
    
}
@end
