//
//  ViewController.m
//  MoviePlayer
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

- (IBAction)playar:(UIButton *)sender {
    
    // primeiro criamos o caminho até o nosso vídeo
    
    NSString *pathVideo = [[NSBundle mainBundle]pathForResource:@"video1" ofType:@"mp4"];
    
    // Transformando o path em URL
    
    NSURL *urlVideo = [[NSURL alloc]initFileURLWithPath:pathVideo];
    
    // Criamos um objeto da classe que nos fornece o player de vídeo
    
    MPMoviePlayerViewController *videoPlayer = [[MPMoviePlayerViewController alloc]initWithContentURL:urlVideo];
    
    
    
    // Apresentando o player de vídeo
    
    [self presentMoviePlayerViewControllerAnimated:videoPlayer];
    
    
}
@end
