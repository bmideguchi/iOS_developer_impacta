//
//  ViewController.h
//  NotificationTabbedApplication
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *labelTexto;






// Método que será disparado quando a notificação for ouvida

-(void)notificacaoRecebida:(NSNotification *)notificacao;

@end
