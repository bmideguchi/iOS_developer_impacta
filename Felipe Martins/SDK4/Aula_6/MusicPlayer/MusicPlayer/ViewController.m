//
//  ViewController.m
//  MusicPlayer
//
//  Created by Felipe Martins on 23/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando o objeto que controla as músicas, padrão do iOS
    self.meuMusicPlayer = [MPMusicPlayerController applicationMusicPlayer];
    
    
    
    // Adicionando os observers para as notificações
    
    NSNotificationCenter *centroNotificacoes = [NSNotificationCenter defaultCenter];
    
    
    [centroNotificacoes addObserver:self selector:@selector(notificouMudancaDeEstado:) name:MPMusicPlayerControllerNowPlayingItemDidChangeNotification object:self.meuMusicPlayer];
    
    
    [centroNotificacoes addObserver:self selector:@selector(notificouMudancaDeVolume:) name:MPMusicPlayerControllerVolumeDidChangeNotification object:self.meuMusicPlayer];
    
    
    // Ligar as notificações do MusicPlayer
    
    [self.meuMusicPlayer beginGeneratingPlaybackNotifications];
    
}

-(void)notificouMudancaDeEstado:(NSNotification *)notificacao{
    // Quando houver uma mudança de estado atualizamos a interface
    
    [self atualizarInterface];

}


-(void)notificouMudancaDeVolume:(NSNotification *)notificacao{

    // Quando o usuário  alterar o volume (pelo botãozinho lateral) atualizamos o nosso slider.
    self.sliderVolume.value = self.meuMusicPlayer.volume;

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)voltar:(UIButton *)sender {
    
    // Método que retrocede uma música na seleção
    
    [self.meuMusicPlayer skipToPreviousItem];
}

- (IBAction)tocar:(UIButton *)sender {
    
    
    // Primeiro verificamos o estado atual do nosso player de música
    if (self.meuMusicPlayer.playbackState != MPMusicPlaybackStatePlaying) {
        // caso seja diferente de MPMusicPlaybackStatePlaying (tocando), quer dizer que está parado
        
        // Colocamos o player pra tocar
        [self.meuMusicPlayer play];
        
        
    }else{
    // Caso esteja tocando
    
        [self.meuMusicPlayer pause];
    
    }
    
    
    
}

- (IBAction)avancar:(UIButton *)sender {
    
    
    // Método que avança uma músuca na seleção
    [self.meuMusicPlayer skipToNextItem];
    
}
- (IBAction)alterouVolume:(UISlider *)sender {
    
    
    // proriedade que altera o volume.
    
    self.meuMusicPlayer.volume = self.sliderVolume.value;
    
}
- (IBAction)selecionarMusicas:(UIButton *)sender {
    
    
    // Criando um objeto da classe que exibe as músucas para o usuário
    MPMediaPickerController *mediaPicker = [[MPMediaPickerController alloc]init];
    
    // Ligando o delegate
    mediaPicker.delegate = self;
    
    
    // Liberando a propriedade que permite ao usuário escolher multiplas faixas
    
    mediaPicker.allowsPickingMultipleItems = YES;
    
    
    
    // Mostrando o elemento na tela
    [self presentViewController:mediaPicker animated:YES completion:nil];
    


}


-(void)atualizarInterface{

    // Resgatando a música atual (que está tocando no momento)

    MPMediaItem *musicaAtual = self.meuMusicPlayer.nowPlayingItem;
    
    
    // Extraindo dados da música atual
    
    NSString *tituloMusica = [musicaAtual valueForProperty:MPMediaItemPropertyTitle];
    
    NSString *nomeArtista = [musicaAtual valueForProperty:MPMediaItemPropertyArtist];
    
    NSString *nomeAlbum = [musicaAtual valueForProperty:MPMediaItemPropertyAlbumTitle];
    
    
    // Operador Ternário
    
    // objeto = (pergunta)? verdadeiro : falso
    
    /*
        if(pergunta){
     
     
        objeto = verdadeira;
     
     }else{
     
        objeto = falsa;
     
     }
     
     
     */
    
    // A operação com if seria da seguinte forma:
    
//    if (tituloMusica == nil) {
//        
//        tituloMusica = @"Desconhecido";
//    }else{
//    
//        tituloMusica = tituloMusica;
//    
//    }
    
    
    // A operação com um Operador Terário ficaria da seguinte forma:

    tituloMusica = (tituloMusica == nil)? @"Desconhecido": [NSString stringWithFormat:@"Título: %@", tituloMusica];
    
    
    nomeArtista = (nomeArtista == nil)? @"Desconhecido": [NSString stringWithFormat:@"Artista: %@", nomeArtista];
    
    nomeAlbum = (nomeAlbum == nil)? @"Desconhecido": [NSString stringWithFormat:@"Album: %@", nomeAlbum];
    
    
    // Colocando os dados na nossa label
    
    self.labelTitulo.text = tituloMusica;
    self.labelArtista.text = nomeArtista;
    self.labelAlbum.text = nomeAlbum;
    
    
    // Resgatando o artWork da nossa música
    
    MPMediaItemArtwork *artWork = [musicaAtual valueForProperty:MPMediaItemPropertyArtwork];
    
    // com base nos dados carregados gerar uma imagem para nossa capa
    
    UIImage *capa = [artWork imageWithSize:CGSizeMake(self.imageViewCapa.bounds.size.width, self.imageViewCapa.bounds.size.height)];
    
    // Verificando se a capa é nula (não havia artWork disponível para a musica)
    if (capa == nil) {
        
        capa = [UIImage imageNamed:@"feliz.png"];
    }
    
    // Exibindo a capa na imageView
    
    self.imageViewCapa.image = capa;
    
}

#pragma mark - Métodos de MPMediaPickerControllerDelegate

// Método disparado quando o usuário cancela a seleção
-(void)mediaPickerDidCancel:(MPMediaPickerController *)mediaPicker{

// Caso o usuário cancele a seleção simplemente tiramos o controller da tela
    
    
    [mediaPicker dismissViewControllerAnimated:YES completion:nil];
    

}

// Método disparado quando o usuário finaliza a seleção
-(void)mediaPicker:(MPMediaPickerController *)mediaPicker didPickMediaItems:(MPMediaItemCollection *)mediaItemCollection{

    
    // Quando o usuário terminar a seleção, repassamos para o MusicPlayer a seleção  feita pelo usuário
    [self.meuMusicPlayer setQueueWithItemCollection:mediaItemCollection];
    
    // Tocamos a música a partir do nosso plyaer de Música
    [self.meuMusicPlayer play];
    
    // Chamando o método que atualiza a interface
    [self atualizarInterface];
    
    // Tiramos o controller da tela
    [mediaPicker dismissViewControllerAnimated:YES completion:nil];


}






@end
