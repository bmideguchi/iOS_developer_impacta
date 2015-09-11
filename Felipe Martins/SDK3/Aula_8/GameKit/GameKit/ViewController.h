//
//  ViewController.h
//  GameKit
//
//  Created by Felipe Martins on 05/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importando o framework ao projeto
#import <GameKit/GameKit.h>


// Importando para o projeto os delegates
@interface ViewController : UIViewController <GKPeerPickerControllerDelegate, GKSessionDelegate>


// Classe que controla a tela de pesquisa de peers (iDevices com o bluetooth ativo) próximos a você.
@property (nonatomic, strong) GKPeerPickerController *seletorAmigo;

// Classe que controla a sessão estabelecida entre os Devices
@property (nonatomic, strong) GKSession *sessao;



@property (weak, nonatomic) IBOutlet UITextView *textViewMensagem;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEntrada;
@property (weak, nonatomic) IBOutlet UILabel *labelStatus;
@property (weak, nonatomic) IBOutlet UILabel *labelEu;
@property (weak, nonatomic) IBOutlet UILabel *labelAmigo;



// Propriedades para armazenar os nomes dos "chateantes"

@property (nonatomic, strong) NSString *nomeEu;
@property (nonatomic, strong) NSString *nomeAmigo;

//


- (IBAction)conectar:(UIButton *)sender;
- (IBAction)desconectar:(UIButton *)sender;
- (IBAction)enviar:(UIButton *)sender;


@end
