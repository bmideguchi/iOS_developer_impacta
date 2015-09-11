//
//  ViewController.h
//  DesafioFichaCadastral
//
//  Created by Felipe Martins on 10/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Adicionando o UITextFieldDelegate a nossa classe
@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldNome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldIdade;

@property (retain, nonatomic) IBOutlet UITextView *textViewDados;


@end
