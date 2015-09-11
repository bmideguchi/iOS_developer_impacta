//
//  ViewController.m
//  NotificationCenter
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
	// NotificationCenter
    
    // Classe responsável por propagar avisos do tipo broadcast (globais). As mensagens são enviadas para todos os objetos do projeto mas apenas alguns respondem a solicitação, apenas os objetos que estão registrados como observers.
    
    
    NSNotificationCenter *centroNotificacoes = [NSNotificationCenter defaultCenter];
    
    [centroNotificacoes addObserver:self selector:@selector(notificouTecladoVaiSubir:) name:UIKeyboardWillShowNotification object:nil];
    
    
    
    [centroNotificacoes addObserver:self selector:@selector(notificouTecladoVaiDescer:) name:UIKeyboardWillHideNotification object:nil];
    
  
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}









#pragma mark - Minhas Ações

-(void)notificouTecladoVaiSubir:(NSNotification *)notificacao{


    NSLog(@"Teclado Subiu! %@", notificacao.userInfo);

}


-(void)notificouTecladoVaiDescer:(NSNotification *)notificacao{

    NSLog(@"Teclado Desceu! %@", notificacao.userInfo);


}



// Quando o usuário tocar na tela, tiramos o teclado.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{


    [self.textFieldUnica resignFirstResponder];


}






@end
