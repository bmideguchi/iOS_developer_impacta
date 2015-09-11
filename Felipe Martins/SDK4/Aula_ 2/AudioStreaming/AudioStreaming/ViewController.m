//
//  ViewController.m
//  AudioStreaming
//
//  Created by Felipe Martins on 14/08/13.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tocar:(UIButton *)sender {
    
    // http://www.webnow.com.br/streaming/autoplaylist/v1/radiorock.mp3.m3u
    
    // Criando uma URL a partir do link acima
    NSURL *urlAudio = [[NSURL alloc]initWithString:@"http://www.webnow.com.br/streaming/autoplaylist/v1/radiorock.mp3.m3u"];
    
    
    // Iniciando o nosso player de Audio
    
    MPMoviePlayerViewController *playerAudio = [[MPMoviePlayerViewController alloc]initWithContentURL:urlAudio];
    
    // Apresentamos na tela
    
    [self presentMoviePlayerViewControllerAnimated:playerAudio];
    
    
    
}
@end
