//
//  ViewController.h
//  desafioListaClientes
//
//  Created by NoiteA on 26/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIToolbar *toolbarUnica;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (weak, nonatomic) IBOutlet UITextView *textViewUnica;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *botaoVoltar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *botaoAvancar;


//Criando as mutable arrays para armazenar informação
@property (strong, nonatomic) NSMutableArray *mutableArrayArmazenaNomes;
@property (strong, nonatomic) NSMutableArray *mutableArrayArmazenaSobrenomes;

@property (assign, nonatomic) int contador;

- (IBAction)ButtonItemNovo:(UIBarButtonItem *)sender;
- (IBAction)ButtonItemAnterior:(UIBarButtonItem *)sender;
- (IBAction)ButtonItemPosterior:(UIBarButtonItem *)sender;

@end
