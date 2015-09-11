//
//  ViewController.h
//  UIAlertView
//
//  Created by NoiteA on 22/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

//Criamos actions para os botões de alert

- (IBAction)ativarAlertaSimples:(UIButton *)sender;

- (IBAction)ativarAlertaTexto:(UIButton *)sender;

- (IBAction)ativarAlertaSenha:(UIButton *)sender;

- (IBAction)ativarAlertaLogin:(UIButton *)sender;

@end
