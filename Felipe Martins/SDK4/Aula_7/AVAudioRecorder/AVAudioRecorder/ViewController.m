//
//  ViewController.m
//  AVAudioRecorder
//
//  Created by Felipe Martins on 26/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

// Criando o caminho para o nosso arquivo (tanto para gravação quanto para resgate)
#define HOME NSHomeDirectory()
#define DOCUMENTS [HOME stringByAppendingPathComponent:@"Documents"]
#define PATH_ARQUIVO [DOCUMENTS stringByAppendingPathComponent:@"gravacao.ma4"]



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gravar:(UIButton *)sender {
    
    // Criar uma URL a partir do PATH_ARQUIVO
    NSURL *urlAudio =[[NSURL alloc]initFileURLWithPath:PATH_ARQUIVO];
    
    NSLog(@"%@", PATH_ARQUIVO);
    
    /* Uma gravação de audio, requer um dicionário de configurações
     
     Qualidade, numero de canais, bit rate, sample rate
     
     */
    
    
    NSDictionary *dicionarioConfiguracoes = @{AVEncoderAudioQualityKey: [NSNumber numberWithInt:AVAudioQualityHigh], AVNumberOfChannelsKey:@2, AVEncoderBitRateKey:@16, AVSampleRateKey: @44100.0};
    
    // AVEncoderAudioQualityKey - > Define a qualidade de Gravação do Arquivo
    // AVNumberOfChannelsKey - > Define a quantidade de canais
    // AVEncoderBitRateKey - > Define a velocidade padrão da faixa
    // AVSampleRateKey -> Define a qualidade de captura do arquivo

    // Classe que grava o arquivo
    self.gravador = [[AVAudioRecorder alloc]initWithURL:urlAudio settings:dicionarioConfiguracoes error:nil];
    
    // Preparamos o hardware para gravação
    [self.gravador prepareToRecord];
    
    // Gravamos
    [self.gravador record];
    
    
}

- (IBAction)pararGravacao:(UIButton *)sender {
    
    
    // Verificamos se o nosso gravador está gravando
    
    if ([self.gravador isRecording]) {
        
        
        [self.gravador stop];
    }
    
    
    
}

- (IBAction)reproduzir:(UIButton *)sender {
    
    
    // Criando um gerenciador de arquivo da classe NSFileManager para verificar se o arquivo existe
    
    NSFileManager *gerenciadorArquivos = [NSFileManager defaultManager];
    
    // verificamos se o arquivo existe
    if ([gerenciadorArquivos fileExistsAtPath:PATH_ARQUIVO]) {
        // Caso o arquivo exista
        
        
        // Detectamos se a gravação ainda está ocorrendo
        if ([self.gravador isRecording]) {
            // Caso ainda esteja ocorrendo a gravação paramos ela na marra
            
            [self.gravador stop];
        }
        
        
        // Criando uma URL para resgatar o local onde o arquivo está gravado
        NSURL *urlAudio = [[NSURL alloc]initFileURLWithPath:PATH_ARQUIVO];
        
        // Iniciando o nosso player de Audio
        self.meuPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:urlAudio error:nil];
        
        // Habilitando o rate
        self.meuPlayer.enableRate = YES;
        
        // prepara o hardware para execucão
        [self.meuPlayer prepareToPlay];
        
        // Playamos a aplicacão!
        [self.meuPlayer play];
        
    }
    
    
    
}

- (IBAction)pararReproducao:(UIButton *)sender {
    
    // Verificamos se o nosso player está reproduzindo
    if ([self.meuPlayer isPlaying]) {
        // Caso esteja reproduzindo
        
        // Paramos a reprodução
        [self.meuPlayer stop];
        
    }
    
    
}

- (IBAction)alterarRate:(UISlider *)sender {
    
    self.meuPlayer.rate = (sender.value * 4.0)+0.001;
    
}
@end
