//
//  ViewController.m
//  musicPlayer
//
//  Created by NoiteA on 23/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Iniciando o objeto que controla as musicas, padrão do iOS
    self.meuMusicPlayer = [MPMusicPlayerController applicationMusicPlayer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)voltar:(UIButton *)sender {
}

- (IBAction)play:(UIButton *)sender {
}

- (IBAction)avancar:(UIButton *)sender {
}


- (IBAction)alterarSlider:(UIButton *)sender {
}

-(IBAction)selecionarMusicas:(UIButton *)sender{
    
    //Criando um objeto da classe que exibe as músicas para o usuário
    MPMediaPickerController *mediaPicker = [[MPMediaPickerController alloc]init];
    
    //Ligando o delegate
    mediaPicker.delegate = self;
    
    //Liberando a propriedade que permite ao usuário escolher múltiplas faixas
    mediaPicker.allowsPickingMultipleItems = YES;
    
    [self presentViewController:mediaPicker animated:YES completion:nil];
}

@end
