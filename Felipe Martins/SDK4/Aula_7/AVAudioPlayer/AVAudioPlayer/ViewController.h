//
//  ViewController.h
//  AVAudioPlayer
//
//  Created by Felipe Martins on 26/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando o FrameWork AvFoundation
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController


// Criando um objeto da classe responsável por tocar o audio.
@property (nonatomic, strong) AVAudioPlayer *meuAudioPlayer;

//


@property (weak, nonatomic) IBOutlet UILabel *labelVolume;
@property (weak, nonatomic) IBOutlet UILabel *labelRate;

//

- (IBAction)alterarVolume:(UISlider *)sender;
- (IBAction)alterarRate:(UISlider *)sender;
- (IBAction)tocar:(UIButton *)sender;
- (IBAction)parar:(UIButton *)sender;



@end
