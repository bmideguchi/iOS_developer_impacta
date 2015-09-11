//
//  ViewController.m
//  UILocalNotification
//
//  Created by Felipe Martins on 16/08/13.
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

- (IBAction)notificar:(UIButton *)sender {
    
    
    // Criando um objeto da classe UILocalNotification, que é a classe responsável para agendar e exibir alertas quando o app está fechado ou em BackGround.
    
    UILocalNotification *minhaNotificacao = [[UILocalNotification alloc]init];
    
                        // Modificando as propriedades da notificação
    
    
    // Setando a mensagem que será exibida na notificação
    [minhaNotificacao setAlertBody:@"Volta pro app mano, não corre não!"];
    
    // Setando a data que será exibida na notificação
    [minhaNotificacao setFireDate:[NSDate dateWithTimeIntervalSinceNow:5.0]];
    
    
    // Inserindo um som personalizado na aplicação
    // Obs: O audio não deve ser maior que 30 segundos edeve estar em um  formato básico do iSO (CAF ou M4A).
    
    [minhaNotificacao setSoundName:@"som.caf"];
    
    
    // Para dispararmos uma notificação precisamos ter acesso a nossa aplicação por meio da classe UIApplication.
    
    UIApplication *meuApp = [UIApplication sharedApplication];
    
    // Por fim ligamos a notificação do app
    
    [meuApp scheduleLocalNotification:minhaNotificacao];
    
    
    
    
    
    
    
}
@end
