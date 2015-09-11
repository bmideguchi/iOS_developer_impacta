//
//  ViewController.m
//  NSTimer
//
//  Created by Felipe Martins on 12/07/13.
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


#pragma mark - Minhas Ações

- (IBAction)iniciar:(UIButton *)sender {
    
    // Iniciando o nosso timer
    
    //TimeInterval - o intervalo em que o timer será disparado
    //target - onde o mesmo irá atuar
    //selector - Método que será disparado pelo timer. Quando precisamos passar um método como parâmetro precisamos utilizar o @selector
    //userInfo - Uma espécie de objeto que pode ser retido enquanto o timer está ativo
    //repeats - Permite que o timer se repita ou seja disparado uma única vez.
    
    
    if (![self.temporizador isValid]) {
        
           self.temporizador = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(metodoDisparadoPeloTimer) userInfo:nil repeats:YES]; 
        
    }
    

    
    
    //self.botaoIniciar.hidden = YES;
    
    
    
}

- (IBAction)parar:(UIButton *)sender {
    
    // Invalidamos o timer
    [self.temporizador invalidate];
    
    //self.botaoIniciar.hidden = NO;
    
    
}


-(void)metodoDisparadoPeloTimer{

    NSLog(@"Timer Funfou!!!!!");


}


@end
