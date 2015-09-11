//
//  ViewController.h
//  ARC
//
//  Created by NoiteA on 26/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//





/*
 ===========| ARC - Automatic Reference counting |===========
 
 
 Antigamente, quando trabalhavamos com MRC eramos obrigados a gerenciar memória "na unha". Utilizávamos os métodos como retain, release e o método dealloc.
 
 No iOS5 foi lançado uma nova funcionalidade de contagem automática de memória (ARC). Utilizando este novo recurso temos basicamente apenas que criar uma ligação fraca (weak) ou uma ligação forte (strong).
 
 Strong - ligação normalmente criada para propriedades que não sejam IBOutlets, ou seja, que tenham como essência somente código
 
 Weak - Normalmente utilizada para elementos que já tem uma ligação em tela.
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldUnica;
@property (weak, nonatomic) IBOutlet UILabel *labelValorWeak;
@property (weak, nonatomic) IBOutlet UILabel *labelValorStrong;

- (IBAction)mostrar:(UIButton *)sender;


//Criando propriedades
@property (weak, nonatomic) NSString *nomeWeak;
@property (strong, nonatomic) NSString *nomeStrong;




@end
