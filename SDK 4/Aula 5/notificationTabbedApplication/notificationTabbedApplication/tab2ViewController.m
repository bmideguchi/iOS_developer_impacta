//
//  tab2ViewController.m
//  notificationTabbedApplication
//
//  Created by NoiteA on 21/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "tab2ViewController.h"

@interface tab2ViewController ()

@end

@implementation tab2ViewController

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
    
    //Criando um objeto do tipo notificationCenter
    NSNotificationCenter *centroNotificacao = [NSNotificationCenter defaultCenter];
    
    //Criando um dicionário de dados que será enviado juntamente com a notificação
    NSDictionary *dicionarioDados = @{@"texto": self.textFieldUnica.text};
    
    //Método que dispara uma notificação
    [centroNotificacao postNotificationName:@"minhaNotificacao"  object:nil userInfo:dicionarioDados];
    
    [self.textFieldUnica resignFirstResponder];
    self.textFieldUnica.text = nil;
    
}


@end
