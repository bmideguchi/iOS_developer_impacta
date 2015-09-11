//
//  ViewController.m
//  GameKit
//
//  Created by NoiteA on 05/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"
#import <GameKit/GameKit.h>

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Iniciando o seletor de peers
    self.seletorAmigo = [[GKPeerPickerController alloc]init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - GKPeerPickerControllerDelegate

-(GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type{
    
    //Definindo o nome do usuário
    //NSString *nomeAparelho = [UIDevice currentDevice].name;
    //self.nomeEu = nomeAparelho
    
    //Como estamos testando no simulator, setaremos o nome manualmente:
    self.nomeEu = @"Bruno";
    
    //Criamos a sessão que será enviada para aprovação
    //GKSessionModeClient - Recebe dados
    //GKSessionModePeer - Recebe e envia dados
    //GKSessionModeServer - Envia dados
    
    GKSession *session = [[GKSession alloc]initWithSessionID:@"sala" displayName:self.nomeEu sessionMode:GKSessionModePeer];
    
    //Retornamos a sessão
    return session;
    
}


-(void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session{
    
    //Quando conectamos armazenamos a sessão retornada
    self.sessao = session;
    
    //Ligamos o delegate
    self.sessao.delegate = self;
    
    //Habilitamos o resgate de informações
    [self.sessao setDataReceiveHandler:self withContext:nil];
    
    //Tiramos o picker da tela
    [picker dismiss];
}


#pragma mark - Métodos de GKSessionDelegate

//Método disparado quando a conexão muda de estado - Conecta, desconecta, etc
-(void)session: (GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state{
    
    
    //Sempre que a conexão muda de estado, verificamos e atualizamos a label
    switch (state) {
        case GKPeerStateAvailable:
            self.textFieldStatus.text = @"Disponível";
            break;
        
        case GKPeerStateUnavailable:
            self.textFieldStatus.text = @"Indisponível";
            break;
            
        case GKPeerStateConnected:
            self.textFieldStatus.text = @"Conectado";
            //Exibimos o nome dos peers conectados
            //displayNameForPeer:peerID - serve para transformar o número do peer no nome do device.
            self.textFieldEu.text = self.nomeEu;
            self.nomeAmigo = [self.sessao displayNameForPeer:peerID];
            self.textFieldAmigo.text = self.nomeAmigo;
            break;
            
        case GKPeerStateDisconnected:
            self.textFieldStatus.text = @"Desconectado";
            break;
            
        case GKPeerStateConnecting:
            self.textFieldStatus.text = @"Conectando";
            break;
            
        default:
            break;
    }
}

-(void)session:(GKSession *)session didFailWithError:(NSError *)error{
    NSLog(@"Erro:%@", error);
}


-(void)gameCenterViewControllerDidFinish:(GKGameCenterViewController *)gameCenterViewController{
    
}

#pragma mark - Minhas ações

- (IBAction)enviar:(UIButton *)sender {
    //Rotina que vai resgatar o texto digitado e enviar uma sessão via bluetooth
    
    //Resgatando o texto digitado
    NSString *textoDigitado = self.textFieldEntrada.text;
    
    //Convertendo o texto para binário
    NSData *textoBinario = [textoDigitado dataUsingEncoding:NSUTF8StringEncoding];
    
    //Envio dos dados para a sessão bluetooth
    //GKSendDataReliable - Garante a entrega dos pacotes
    //GKSendDataUnreliable - Não garante a entrega dos pacotes
    [self.sessao sendDataToAllPeers:textoBinario withDataMode:GKSendDataReliable error:nil];
    
    //Limpamos a caixa de texto e baixamos o teclado
    self.textFieldEntrada.text = nil;
    [self.textFieldEntrada resignFirstResponder];
    
    //Exibimos a mensagem na textView
    self.textViewMensagem.text = [NSString stringWithFormat:@"%@%@:%@", self.textViewMensagem.text, self.nomeEu, textoDigitado];
}

- (IBAction)conectar:(UIButton *)sender {
    //Primeiro verificamos se podemos fazer uso
    if (self.sessao.available == NO) {
        
        //Caso possamos utilizar a sessão, definimos o tipo de conexão que iremos utilizar
        //GKPeerPickerConnectionTypeNearby - Conexão por bluetooth
        //GKPeerPickerConnectionTypeOnline - Conexão por internet
        self.seletorAmigo.connectionTypesMask = GKPeerPickerConnectionTypeNearby;
        
        //Ligamos o delegate
        self.seletorAmigo.delegate = self;
        [self.seletorAmigo show];
        
        
    }
}

- (IBAction)desconectar:(UIButton *)sender {
    
    //Método que desconecta dos peers
    [self.sessao disconnectFromAllPeers];
    self.sessao.available = NO;
    
}

//Assinatura para receber dados

- (void) receiveData:(NSData *)data fromPeer:(NSString *)peer inSession: (GKSession *)session context:(void *)context{
    //Converter o binário recebido para NSString
    NSString *textoRecebido = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    
    //Exibir a mensagem na textView
    self.textViewMensagem.text = [NSString stringWithFormat:@"%@%@:%@", self.textViewMensagem.text, self.nomeAmigo, textoRecebido];
}
@end
