//
//  ViewController.h
//  AVAudioRecorder
//
//  Created by Felipe Martins on 26/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando o AVFoundation Framework
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController




//

@property (nonatomic , strong) AVAudioPlayer *meuPlayer;
@property (nonatomic, strong) AVAudioRecorder *gravador;

//

- (IBAction)gravar:(UIButton *)sender;
- (IBAction)pararGravacao:(UIButton *)sender;
- (IBAction)reproduzir:(UIButton *)sender;
- (IBAction)pararReproducao:(UIButton *)sender;


- (IBAction)alterarRate:(UISlider *)sender;


@end
