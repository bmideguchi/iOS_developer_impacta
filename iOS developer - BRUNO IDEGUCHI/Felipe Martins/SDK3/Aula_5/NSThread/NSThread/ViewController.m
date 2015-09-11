//
//  ViewController.m
//  NSThread
//
//  Created by Felipe Martins on 29/07/13.
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

#pragma mark - Minhas Acões

- (IBAction)processarMainThread:(UIButton *)sender {
    
    // Processamento demorado
    [self execucaoParalela];
}

- (IBAction)processarSeparado:(UIButton *)sender {
    
    // Iniciando a nossa Thread
    self.subProcesso = [[NSThread alloc]initWithTarget:self selector:@selector(execucaoParalela) object:nil];
    
    // É necessário ativar o processamento de um NSThread para que a mesma funcione corretamente.
    //startando o subprocesso
    [self.subProcesso start];
    
    
    
}




-(void)execucaoParalela{


    // criando um FOR para simular o processo demorado 
    for (int i = 1; i <= 10; i++) {
        
        NSLog(@"%i", i);
        
      //  [self atualizarInterface:[NSNumber numberWithInt:i]];
        
        
        [self performSelectorOnMainThread:@selector(atualizarInterface:) withObject:[NSNumber numberWithInt:i] waitUntilDone:NO];
        
        //Método que permite forçar uma pausa na execução do código
        [NSThread sleepForTimeInterval:1.0];
        
        
    }

    // Quando terminamos de utilizar um Thread, "matamos" a mesma.
    [self.subProcesso cancel];

}

// Método que usaremos para atualizar a nossa interface
-(void)atualizarInterface:(NSNumber *)numero{

    self.labelContagem.text = [NSString stringWithFormat:@"%@", numero];



}

@end
