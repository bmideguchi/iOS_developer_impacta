//
//  ViewController.m
//  audioStreaming
//
//  Created by NoiteA on 14/08/13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tocar:(UIButton *)sender {
    
    //Endereço da radio rock:
    //http://www.webnow.com.br/streaming/autoplaylist/v1/radiorock.mp3.m3u
    
    //Criando uma URL a partir do link acima
    NSURL *URLAudio = [[NSURL alloc]initWithString:@"http://www.webnow.com.br/streaming/autoplaylist/v1/radiorock.mp3.m3u"];
    
    //Iniciando nosso player de audio
    MPMoviePlayerViewController *playerAudio = [[MPMoviePlayerViewController alloc]initWithContentURL:URLAudio];
    
    //Apresentamos na tela
    [self presentMoviePlayerViewControllerAnimated:playerAudio];
}
@end
