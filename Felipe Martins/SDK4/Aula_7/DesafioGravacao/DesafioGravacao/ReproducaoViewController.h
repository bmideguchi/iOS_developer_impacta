//
//  ReproducaoViewController.h
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando a framework
#import <AVFoundation/AVFoundation.h>

@interface ReproducaoViewController : UIViewController

// Dicionário que receberá os dados da tela anterior
@property (nonatomic, strong) NSDictionary *dicionarioInfoAudio;


// Criando o player de Audio

@property (nonatomic, strong) AVAudioPlayer *meuPlayer;

//

- (IBAction)reproduzir:(UIButton *)sender;

- (IBAction)pararReproducao:(UIButton *)sender;


@end
