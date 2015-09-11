//
//  ViewController.h
//  desafioCadastroCliente
//
//  Created by NoiteA on 21/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>


@property (retain, nonatomic) IBOutlet UITextField *textFieldNome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldTelefone;
@property (retain, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (retain, nonatomic) IBOutlet UITextView *textViewResultado;

//Array que vai armazenar os dados
@property (retain, nonatomic) NSMutableArray *mutableArrayNome;
@property (retain, nonatomic) NSMutableArray *mutableArrayTelefone;
@property (retain, nonatomic) NSMutableArray *mutableArrayEmail;


//Actions dos botoes
- (IBAction)mostrarResultado:(UIBarButtonItem *)sender;
- (IBAction)limpar:(UIBarButtonItem *)sender;
- (IBAction)habilitarEdicao:(UIBarButtonItem *)sender;

//Setando as variáveis que irão receber as informações para utilizar o AddObject
@property (nonatomic, retain)NSString *nome;
@property (nonatomic, retain)NSString *telefone;
@property (nonatomic, retain)NSString *email;


@end
