

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando o seletor de peers
    self.seletorAmigo = [[GKPeerPickerController alloc]init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)conectar:(UIButton *)sender {
    
    
    // Primeiro veirificamos se podemos fazer uso
    
    if (self.sessao.available == NO) {
        // Caso possamos utilizar a sessão
        
        
        // Definimos o tipo de conexão que iremos utilizar
        // GKPeerPickerConnectionTypeNearby >> Conexão por Bluetooth
        // GKPeerPickerConnectionTypeOnline >> Conexão por internet
        
        self.seletorAmigo.connectionTypesMask = GKPeerPickerConnectionTypeNearby;
        
        // Ligamos o delegate
        self.seletorAmigo.delegate = self;
        
        // Exibimos a jamela de selecão
        [self.seletorAmigo show];
        
    }

}



#pragma mark - GKPeerPickerControllerDelegate

-(GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type{


    // Definindo o nome do device
//    NSString *nomeAparelho = [UIDevice currentDevice].name;
//    self.nomeEu = nomeAparelho;


        // Como estamos todos tetando no Simulator setaremos o nome manualmente
    self.nomeEu = @"Garibaldo";


    // Criamos a sessão que será enviada para a aprovação
    
    //GKSessionModeClient >> Recebe dados
    //GKSessionModePeer >> Recebe e envia dados
    //GKSessionModeServer >> Envia dados
    
    GKSession *session = [[GKSession alloc]initWithSessionID:@"sala" displayName:self.nomeEu sessionMode:GKSessionModePeer];
    
    // Retornamos a sessão
    return  session;

}

// Método que é disparado quando a conexão foi estabelecida

-(void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session{
    // Quando conectamos
    
    // Armazenamos a sessão retornada

    self.sessao = session;
    
    // Ligamos o delegate
    
    self.sessao.delegate = self;

    // Habilitamos o resgate de informações
    
    [self.sessao setDataReceiveHandler:self withContext:nil];
    
    // tiramos o picker da tela
    
    [picker dismiss];


}

#pragma mark - Métodos de GKSessionDelegate

// Método disparado quando a conexão muda de estado - Conecta, desconecta, etc...

-(void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state{

    // Sempre que a conexão muda de estado, verificamos o estado atual e atualizamos nossa label.
    
    
    switch (state) {
        case GKPeerStateAvailable:
        
            self.labelStatus.text = @"Disponível";
            break;
        
        case GKPeerStateUnavailable:
            
            self.labelStatus.text = @"Indisponível";
            break;
            
        case GKPeerStateConnected:
            
            self.labelStatus.text = @"Conectado";
            
            // Exibimos o nome dos peers conectados
            self.labelEu.text = self.nomeEu;
            self.nomeAmigo = [self.sessao displayNameForPeer:peerID];
            self.labelAmigo.text = self.nomeAmigo;
            
            break;
            
        case GKPeerStateDisconnected:
            
            self.labelStatus.text = @"Desconectado";
            break;
            
        case GKPeerStateConnecting:
            
            self.labelStatus.text = @"Conectandoooo...!!!";
            
            break;
        default:
            break;
    }


}

// Método disparado quando há erro na conexão

-(void)session:(GKSession *)session didFailWithError:(NSError *)error{

//Caso ocorra algum erro damos um log no mesmo
    
    NSLog(@"Erro: %@", error);


}



- (IBAction)desconectar:(UIButton *)sender {
    
    // Método que desconecta dos peers
    
    [self.sessao disconnectFromAllPeers];
    
    self.sessao.available = NO;
    
    
    
}

- (IBAction)enviar:(UIButton *)sender {
    
    // Rotina que vai resgatar o texto digitado e enviar uma sessão cia bluetooh
    
    
    // Resgatando o texto digitado
    NSString *textoDigitado = self.textFieldEntrada.text;
    
    // Convertendo o texto para binário
    NSData *textoBinario = [textoDigitado dataUsingEncoding:NSUTF8StringEncoding];
    
    //  Envio dos dados binários para a sessão bluetooh
    //GKSendDataReliable >> Garante a entrega dos pacotes
    //GKSendDataUnreliable >> Não garante a entrega dos pacotes
    
    
[self.sessao sendDataToAllPeers:textoBinario withDataMode:GKSendDataReliable error:nil];
    
    // Limpamos a caixa de texto e baixamos o teclado
    self.textFieldEntrada.text = nil;
    [self.textFieldEntrada resignFirstResponder];
    
    
    // Exibimos a mensagem na textView
    self.textViewMensagem.text = [NSString stringWithFormat:@"%@%@: %@\n", self.textViewMensagem.text, self.nomeEu, textoDigitado];
    
}


// Assinatura para receber dados.

- (void) receiveData:(NSData *)data fromPeer:(NSString *)peer inSession: (GKSession *)session context:(void *)context{


    // Converter o binário recebido para NSSTring
    
    NSString *textoRecebido = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];


    // Exibir a mensagem na textView
    self.textViewMensagem.text = [NSString stringWithFormat:@"%@%@: %@\n", self.textViewMensagem.text, self.nomeAmigo, textoRecebido];




}



@end
