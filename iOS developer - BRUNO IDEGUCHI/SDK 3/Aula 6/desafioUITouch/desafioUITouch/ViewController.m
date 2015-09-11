//
//  ViewController.m
//  desafioUITouch
//
//  Created by NoiteA on 31/07/13.
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
    
    //Habilitando a interação multitoque
    self.view.multipleTouchEnabled = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITouch

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //Criando um elemento de UITouch
    UITouch *toque = [touches anyObject];
    
    //Criando um CGPoint para receber a posição tocada na view
    CGPoint posicaoToque = [toque locationInView:self.view];
    
    //Criando variaveis para receber a posicao
    int integerPosicaoX = posicaoToque.x;
    int integerPosicaoY = posicaoToque.y;

    //Mostrando a posição tocada
    self.labelX.text = [NSString stringWithFormat:@"%i", integerPosicaoX];
    self.labelY.text = [NSString stringWithFormat:@"%i", integerPosicaoY];
    
    //Mudando o background
    if (integerPosicaoX >= 160.0){
        self.view.backgroundColor = [UIColor yellowColor];
    }
    else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
}

@end
