//
//  NovaGravacaoViewController.m
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "NovaGravacaoViewController.h"

/*
 
 Iniciamos o DEFINE do nosso camimho PATH_ARQUIVO no documento de extensão .pch para que ele seja visível em todas as classes.
 
 */

@interface NovaGravacaoViewController ()

@end

@implementation NovaGravacaoViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // Criando um gerenciador de arquivos
    NSFileManager *gerenciador = [NSFileManager defaultManager];
    
    // Verificando se o arquivo de plist existe no caminho indicado
    if ([gerenciador fileExistsAtPath:PATH_ARQUIVO]) {
    // caso o arquivo exista
        
        
        // Iniciamos o array baseado no arquivo existente
        self.arrayGravacoes = [NSMutableArray arrayWithContentsOfFile:PATH_ARQUIVO];
        
        
    }else{
        // caso o arquivo não exista iniciamos o array
        
        self.arrayGravacoes = [[NSMutableArray alloc]init];
    
    }
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)iniciarGravacao:(UIButton *)sender {
    
    // Quando o usuário inicia uma nova gravação mostramos um alertView para que seja definido o título da gravação
    UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Aviso!" message:@"Escolha o Título para a a gravação" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Ok", nil];
    
    // Definindo que o nosso alertView terá um campo de texto
    alerta.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    // Exibindo o nosso alerta;
    [alerta show];
    
    
}

- (IBAction)pararGravacao:(UIButton *)sender {
    
    // Verificamos se o nosso gravador está realmente gravando
    
    if ([self.gravador isRecording]) {
        // Caso ele esteja gravando
        
        // Paramos o gravador
        [self.gravador stop];
        
        // Paramos o timer
        [self.timer invalidate];
        
        // Tiramos o timer de memória
        self.timer = nil;
        
    }
    
    
    
}


#pragma mark - Métodos de UIAlertViewDelegate

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{


   // Primeiro verificamos se o botão que o usuário clicpou foi o cancelar (0) ou o Ok(1)

    if (buttonIndex == 1) {
        
        // caso tenha sibo o OK
        // Acessamos o campo de texto da alertView
        
        UITextField *campoDetexto = [alertView textFieldAtIndex:0];
        
        // Verificamos se o usuário digitou algo na textField
        
        if (campoDetexto.text.length == 0) {
            // Caso o usuário não tenha digitado nada
            
            
            // mostramos novamente a alertView
            [alertView show];
            
        }else{
            // caso o usuário tenha digitado algo
            
            
            // Resgatamos o que foi digitado (o nome da gravação)
            NSString *nomeGravacao = campoDetexto.text;
            
            // Definimos o caminho da gravação
            NSString *pathGravacao = [NSString stringWithFormat:@"%@/%@.ma4", DOCUMENTS, nomeGravacao];
            
            // Criando uma URL a partir do pathGravacao
            NSURL *urlAudio = [[NSURL alloc]initFileURLWithPath:pathGravacao];
            
            // Criando um dicionário para armazenar as informações relativas a gravação
            NSDictionary *dicionarioDados = @{@"nome": nomeGravacao, @"path": pathGravacao};
            
            
            // Criando um dicionário com as definições da gravação
            NSDictionary *configuracoesGravador = @{AVNumberOfChannelsKey: @2, AVEncoderAudioQualityKey: [NSNumber numberWithInt:AVAudioQualityHigh], AVSampleRateKey: @44100.0, AVEncoderBitRateKey: @16};
            
            // Iniciando o nosso gravador de audio
            self.gravador = [[AVAudioRecorder alloc]initWithURL:urlAudio settings:configuracoesGravador error:nil];
            
            // Preparando o hardware
            [self.gravador prepareToRecord];
            
            // Gravando
            [self.gravador recordForDuration:10.0];
            
            // Salvando o dicionario com as informações de gravação no nosso array
            [self.arrayGravacoes addObject:dicionarioDados];
            
            // salvando o nosso array como uma plist com as gravações
            [self.arrayGravacoes writeToFile:PATH_ARQUIVO atomically:YES];
            
            // Zeramos o progressView
            self.progressTempo.progress = 0.0;
            
            // Iniciando nosso timer que atualizará o progress
            self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(atualizarProgress) userInfo:nil repeats:YES];
            
            // Disparando o Time
            [self.timer fire];
            
        }
        
        
    }


}

-(void)atualizarProgress{


    self.progresso = self.progresso + 0.1;
    
    [self.progressTempo setProgress:self.progresso animated:YES];




}

@end
