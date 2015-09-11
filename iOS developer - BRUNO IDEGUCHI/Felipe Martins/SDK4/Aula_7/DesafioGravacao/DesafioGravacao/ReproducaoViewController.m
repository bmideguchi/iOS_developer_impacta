//
//  ReproducaoViewController.m
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ReproducaoViewController.h"

@interface ReproducaoViewController ()

@end

@implementation ReproducaoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reproduzir:(UIButton *)sender {
    
    // Craindo uma URL a partir dos dados resgatados
    NSURL *urlAudio = [[NSURL alloc]initFileURLWithPath:[self.dicionarioInfoAudio objectForKey:@"path"]];
    
    // Iniciamos nosso player
    self.meuPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:urlAudio error:nil];
    
    // Preparando o hardware
    [self.meuPlayer prepareToPlay];
    
    
    // E finalmente playamos!!!
    [self.meuPlayer play];
    
    
}

- (IBAction)pararReproducao:(UIButton *)sender {
    
    
    // Verificamos se o player está tocando
    
    if ([self.meuPlayer isPlaying]) {
        
        
        // Paramos o player
        [self.meuPlayer stop];
    }
    
}
@end
