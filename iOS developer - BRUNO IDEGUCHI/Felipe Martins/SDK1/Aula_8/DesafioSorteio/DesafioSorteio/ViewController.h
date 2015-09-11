//
//  ViewController.h
//  DesafioSorteio
//
//  Created by Felipe Martins on 19/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importamos o UITextFieldDelegate para termos acesso ao return do teclado
@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldNome;
@property (retain, nonatomic) IBOutlet UILabel *labelSorteado;

// Array que armazenará os participantes
@property (nonatomic, retain) NSMutableArray *arrayParticipantes;

- (IBAction)sortear:(UIButton *)sender;
- (IBAction)apagar:(UIButton *)sender;


@end
