//
//  ViewController.h
//  GameKit
//
//  Created by NoiteA on 05/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <GameKit/GameKit.h>
#import <UIKit/UIKit.h>

//Importando o delegate
@interface ViewController : UIViewController <GKGameCenterControllerDelegate>

//Classe que controla a tela de pesquisa de peers
@property (nonatomic, strong) GKPeerPickerController *seletorAmigo;

//Classe que controla a sessão estabelecida entre os devices
@property (nonatomic, strong) GKSession *sessao;

@property (weak, nonatomic) IBOutlet UITextView *textViewMensagem;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEntrada;
@property (weak, nonatomic) IBOutlet UILabel *textFieldStatus;
@property (weak, nonatomic) IBOutlet UILabel *textFieldEu;
@property (weak, nonatomic) IBOutlet UILabel *textFieldAmigo;

- (IBAction)enviar:(UIButton *)sender;
- (IBAction)conectar:(UIButton *)sender;
- (IBAction)desconectar:(UIButton *)sender;

//Propriedades para armazenar os nomes dos chatters
@property (nonatomic, strong) NSString *nomeEu;
@property (nonatomic, strong) NSString *nomeAmigo;

@end
