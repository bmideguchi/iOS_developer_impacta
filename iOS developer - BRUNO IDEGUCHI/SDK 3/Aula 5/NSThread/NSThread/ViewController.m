//
//  ViewController.m
//  NSThread
//
//  Created by NoiteA on 29/07/13.
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



#pragma mark - Minhas acoes

- (IBAction)processarMainThread:(UIButton *)sender {
    //Processamento demorado
    [self execucaoParaTela];
}

- (IBAction)processarSeparado:(UIButton *)sender {
    //Iniciar a thread separada
    self.subProcesso = [[NSThread alloc]initWithTarget:self selector:@selector(execucaoParaTela) object:nil];
    
    //É necessário ativar o processamento de uma NSThread para que a mesma funcione corretamente.
    //Startando o subprocesso
    [self.subProcesso start];
}

//Lembrando que escrevi errado, era execucao PARALELA
-(void)execucaoParaTela{
    for (int i = 1; i<=10; i++){
        NSLog(@"%i", i);
        
        //[self atualizarInterface:[NSNumber numberWithInt:i]];
        
        [self performSelectorOnMainThread:@selector(atualizarInterface:) withObject:[NSNumber numberWithInt:i] waitUntilDone:NO];
        
        //Método que permite forçar uma pausa na execução do código
        [NSThread sleepForTimeInterval:1.0];
    }
    //Quando terminamos de utilizar a Thread, matamos a mesma
    [self.subProcesso cancel];
}

-(void)atualizarInterface:(NSNumber *)numero{
    self.labelContagem.text = [NSString stringWithFormat:@"%@", numero];
}

@end
