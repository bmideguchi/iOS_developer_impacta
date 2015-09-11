//
//  ViewController.h
//  DesafioCadastroCliente
//
//  Created by Felipe Martins on 24/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Incluimos o UITextFieldDelegate
@interface ViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldNome;
@property (retain, nonatomic) IBOutlet UITextField *textFieldTelefone;
@property (retain, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (retain, nonatomic) IBOutlet UITextView *textViewUnica;


// propertyes que armazenarão os dados do cliente

@property (nonatomic, retain) NSString *nome;
@property (nonatomic, retain) NSString *telefone;
@property (nonatomic, retain) NSString *email;

//

- (IBAction)criarCadastro:(UIBarButtonItem *)sender;
- (IBAction)limparCadastro:(UIBarButtonItem *)sender;

- (IBAction)mostrarCadastro:(UIBarButtonItem *)sender;

@end
