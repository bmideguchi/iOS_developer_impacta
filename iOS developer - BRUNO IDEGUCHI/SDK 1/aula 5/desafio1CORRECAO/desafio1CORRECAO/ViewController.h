//
//  ViewController.h
//  desafio1CORRECAO
//
//  Created by NoiteA on 10/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

//Adicionando o UITextViewDelegate a nossa classe
@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldNome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldIdade;
@property (retain, nonatomic) IBOutlet UITextView *textViewDados;

-(BOOL)textFieldShouldReturn:(UITextField *)textField;

@end
