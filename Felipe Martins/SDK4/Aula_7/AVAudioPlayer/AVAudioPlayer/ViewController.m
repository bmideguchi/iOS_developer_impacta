//
//  ViewController.m
//  AVAudioPlayer
//
//  Created by Felipe Martins on 26/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.labelRate.text = nil;
    self.labelVolume.text = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterarVolume:(UISlider *)sender {
    
    // Alterar o volume do audio que está sendo executado
    self.meuAudioPlayer.volume = sender.value;
    
    // Exibindo o volume na label
    self.labelVolume.text = [NSString stringWithFormat:@"%.2f", sender.value * 100];
    
    
    
}

- (IBAction)alterarRate:(UISlider *)sender {
    
    self.meuAudioPlayer.rate = (sender.value * 4) +0.0001;
    self.labelRate.text = [NSString stringWithFormat:@" %.2f", sender.value * 4];
    
    
}

- (IBAction)tocar:(UIButton *)sender {
    
    // AVAudioPlayer - Classe que reproduz um áudio a partir de uma URL
    
    NSString *pathArquivo = [[NSBundle mainBundle]pathForResource:@"dubstep" ofType:@"m4a"];
    
    // Criando uma URL, a partir da nossa string que contém o caminho do audio
    
    NSURL *urlPath = [[NSURL alloc]initFileURLWithPath:pathArquivo];
    
    // Iniciando o nosso player com base na nossa URL
    
    self.meuAudioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:urlPath error:nil];
    
    // Habilitando a propriedade de Rate
    self.meuAudioPlayer.enableRate = YES;
    
    // Método que prepara o hardware para execução
    [self.meuAudioPlayer prepareToPlay];
    
    
    // Tocando o audio
    [self.meuAudioPlayer play];

    
}

- (IBAction)parar:(UIButton *)sender {
    
    // Verificando se o nosso player está tocando
    
    if ([self.meuAudioPlayer isPlaying]) {
        // Caso o player esteja tocando
        
        
        // Método que encerra a reprodução do audio
        [self.meuAudioPlayer stop];
        
        
    } 
    
    
    
    
    
    
}
@end
