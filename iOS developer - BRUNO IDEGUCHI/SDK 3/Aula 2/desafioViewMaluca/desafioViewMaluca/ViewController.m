//
//  ViewController.m
//  desafioViewMaluca
//
//  Created by NoiteA on 22/07/13.
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

#pragma mark - minhas acoes

- (IBAction)animar:(UIButton *)sender {
    //Allocamos e iniciamos o nosso timer
    self.temporizador = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(metodoQueCriaAnimacao) userInfo:nil repeats:YES];
}

-(void)metodoQueCriaAnimacao{
    //Criamos um método que anima os elementos de view
    [UIView animateWithDuration:1.0 animations:^{
        //Tudo que colocarmos aqui dentro será animado
        //Criamos variáveis aleatórias para cada cor
        float red = arc4random()%255;
        float green = arc4random()%255;
        float blue = arc4random()%255;
        //Setamos o background a partir das variáveis sorteadas
        self.viewzinha.backgroundColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
        //Criamos variáveis aleatórias para a posição
        float x = arc4random()%320;
        float y = arc4random()%460;
        self.viewzinha.center = CGPointMake(x,y);
    }];
}

@end
