//
//  ViewController.h
//  desafioSorteio
//
//  Created by NoiteA on 19/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

//Importamos o UITextFieldDelegate para termos acesso ao return do teclado:
@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldInsereNome;

@property (retain, nonatomic) IBOutlet UIButton *buttonSortear;

@property (retain, nonatomic) IBOutlet UIButton *buttonApagar;

@property (retain, nonatomic) IBOutlet UILabel *labelSorteado;

//Declarando o array que armazenará os participantes
@property (retain, nonatomic) NSMutableArray *meuMutableArray;

- (IBAction)escreverNome:(UITextField *)sender;

- (IBAction)sortearNome:(UIButton *)sender;

- (IBAction)apagarNome:(UIButton *)sender;





@end
