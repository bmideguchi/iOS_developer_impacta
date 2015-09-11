//
//  ViewController.h
//  musicPlayer
//
//  Created by NoiteA on 23/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <MediaPlayer/MediaPlayer.h>

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <MPMediaPickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *minhaImageView;
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (weak, nonatomic) IBOutlet UILabel *labelArtista;
@property (weak, nonatomic) IBOutlet UILabel *labelAlbum;

- (IBAction)voltar:(UIButton *)sender;
- (IBAction)play:(UIButton *)sender;
- (IBAction)avancar:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UISlider *meuSlider;

- (IBAction)alterarSlider:(UIButton *)sender;

@property (nonatomic, strong)MPMusicPlayerController *meuMusicPlayer;

@end
