//
//  ViewController.m
//  TrocaFundoUmBotao
//
//  Created by Felipe Martins on 05/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
      [self clicarBotao:nil];
    
    self.controle = 1;
    
   // self.view.backgroundColor = [UIColor blueColor];
    
  
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

-(void)clicarBotao:(id)sender{

    if (self.controle == 1) {
        
        
        self.view.backgroundColor = [UIColor blueColor];
        
        self.controle = 0;
    
    }else{
    
        self.view.backgroundColor = [UIColor yellowColor];
        
        self.controle = 1;
    
    }



}







@end
