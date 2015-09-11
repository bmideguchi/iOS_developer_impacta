//
//  adicionandoAnimalViewController.h
//  testeVet
//
//  Created by NoiteA on 31/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface adicionandoAnimalViewController : UIViewController <UITextFieldDelegate>

//Criando os outlets

@property (strong, nonatomic) IBOutlet UIView *fotoDoAnimalImageView;

@property (weak, nonatomic) IBOutlet UITextField *textFieldNomeDoAnimal;

@property (weak, nonatomic) IBOutlet UITextField *textFieldTipoDoAnimal;

@property (weak, nonatomic) IBOutlet UITextField *textFieldIdadeDoAnimal;

@property (weak, nonatomic) IBOutlet UITextField *textFieldEnfermidadeDoAnimal;


//Criando as arrays para armazenar as informações

@property (strong, nonatomic) NSMutableArray *mutableArrayNomeDoAnimal;
@property (strong, nonatomic) NSMutableArray *mutableArrayTipoDoAnimal;
@property (strong, nonatomic) NSMutableArray *mutableArrayIdadeDoAnimal;
@property (strong, nonatomic) NSMutableArray *mutableArrayEnfermidadeDoAnimal;

//Criando a action do botão salvar

- (IBAction)botaoSalvar:(UIButton *)sender;
@end
