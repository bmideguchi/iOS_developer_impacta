//
//  ViewController.m
//  iAD
//
//  Created by Felipe Martins on 26/07/13.
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
    
    self.meuBanner.delegate = self;
    
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}




#pragma mark - ADBannerViewDelegate

-(void)bannerViewWillLoadAd:(ADBannerView *)banner{

    NSLog(@"O banner começará a carregar");

}


-(void)bannerViewDidLoadAd:(ADBannerView *)banner{

    NSLog(@"O banner foi carregado");
    
   
}


-(BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave{

    NSLog(@"Clicou no banner");

    return YES;

}

-(void)bannerViewActionDidFinish:(ADBannerView *)banner{

    NSLog(@"Usuário fechou a janela de detalhas");


}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{

    NSLog(@"Erro ao carregar");

}



@end
