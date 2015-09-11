//
//  ViewController.m
//  GrandCentralDispatch
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

- (IBAction)iniciar:(UIButton *)sender {
    
    /*
     
     ========| Grand Central Dispatch |========
     
     Nos permite a utilização de recursos avançados para subprocessamento. Possui recursos para divisão de código em múltiplos núcleos
     
     ==== Terminologia ====
     
     queue: Fila de execução de tarefas
     main_queue: Concentra os recursos principais do app (interface gráfica)
     global_queue: Espaço reservado para processamentos secundários
     
     sync: Define uma execução Síncrona que impede blocos simultâneos.
     async: Define uma execução assincrona que permite blocos simultâneos.
     
     */
    

    /*
    //NÃO DEVEMOS FAZER DESSA FORMA!
     
     Não é aconselhado chamar um subprocesso síncrono na main_queue. Isso pode criar uma espécie de Deadlock, uma espera entre dois processes entre si (ex.: senhor de idade e mulher deixando o outro entrar no elevador primeiro, e acaba ninguém entrando de fato).
     
    dispatch_sync(dispatch_get_main_queue(), ^{
        for (int i = 1 ; i <= 10; i++) {
            NSLog(@"Processamento A = %i", i);
            [NSThread sleepForTimeInterval:1.0];
        }
    });
    */
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 1 ; i <= 10; i++) {
            NSLog(@"Processamento A = %i", i);
            [NSThread sleepForTimeInterval:1.0];
        }
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 1 ; i <= 10; i++) {
            NSLog(@"Processamento B = %i", i);
            [NSThread sleepForTimeInterval:1.0];
        }
    });
    
}
@end
