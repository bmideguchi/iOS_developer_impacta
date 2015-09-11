//
//  ViewController.h
//  AddressBook
//
//  Created by Felipe Martins on 05/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando os Frameworks para nosso documento.
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

// Importando o delegate ao projeto para termos acesso a seus métodos
@interface ViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelSobrenome;
@property (weak, nonatomic) IBOutlet UILabel *labelTelefone;

// Variável de controle que usaremos para verificar se a vontade do usuário é apagar um contato ou selecionar um contato
@property (nonatomic, assign) BOOL isSelecting;

//

- (IBAction)selecionar:(UIButton *)sender;
- (IBAction)apagar:(UIButton *)sender;



@end
