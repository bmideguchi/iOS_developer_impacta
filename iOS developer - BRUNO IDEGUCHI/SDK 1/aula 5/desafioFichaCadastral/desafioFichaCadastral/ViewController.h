//
//  ViewController.h
//  desafioFichaCadastral
//
//  Created by NoiteA on 10/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldNome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldIdade;
@property (retain, nonatomic) IBOutlet UITextView *textViewPrincipal;

@property (retain, nonatomic) NSString *nome;
@property (retain, nonatomic) NSString *sobrenome;
@property (nonatomic, assign) NSUInteger *idade;

-(BOOL)textFieldShouldReturn:(UITextField *)textField;
- (IBAction)textFieldEditarNome:(UITextField *)sender;
- (IBAction)textFieldEditarSobrenome:(UITextField *)sender;
- (IBAction)textFieldEditarIdade:(UITextField *)sender;

@end
