//
//  ViewController.h
//  MusicPlayer
//
//  Created by Felipe Martins on 23/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando o framework ao projeto
#import <MediaPlayer/MediaPlayer.h>

// Incluindo o delegate
@interface ViewController : UIViewController <MPMediaPickerControllerDelegate>


// Criando um objeto da classe que controla o acesso ao MusicPlayer Library  do dispositivo.

@property (nonatomic, strong) MPMusicPlayerController *meuMusicPlayer;


//


@property (weak, nonatomic) IBOutlet UIImageView *imageViewCapa;
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (weak, nonatomic) IBOutlet UILabel *labelArtista;
@property (weak, nonatomic) IBOutlet UILabel *labelAlbum;

//
- (IBAction)voltar:(UIButton *)sender;
- (IBAction)tocar:(UIButton *)sender;
- (IBAction)avancar:(UIButton *)sender;

//
- (IBAction)alterouVolume:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UISlider *sliderVolume;

//

- (IBAction)selecionarMusicas:(UIButton *)sender;




// Método que atualizará a interface com os dados da música que está sendo executada


-(void)atualizarInterface;

//


// Métodos que serão executados quando o estado da música for mudado

-(void)notificouMudancaDeEstado:(NSNotification *)notificacao;
-(void)notificouMudancaDeVolume:(NSNotification *)notificacao;


@end
