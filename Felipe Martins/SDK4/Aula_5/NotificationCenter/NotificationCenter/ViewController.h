//
//  ViewController.h
//  NotificationCenter
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldUnica;






// Criando os métodos que serão disparados quando as notificações forem executadas

-(void)notificouTecladoVaiSubir:(NSNotification *)notificacao;

-(void)notificouTecladoVaiDescer:(NSNotification *)notificacao;

@end
