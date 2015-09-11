//
//  ViewController.m
//  GrandCentralDispatch
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

- (IBAction)iniciar:(UIButton *)sender {
    
    
    /* GCD - Grand Central Dispatch
     
     Nos permite a utilização de recursos avançados para subprocessamento. possui recursos para divisão de código em multiplos núcleos.
     
     
     
     Terminologias
     
     queue: Fila de execução de tarefas
     main_queue: Concentra os recursos proncipais do app (Interface gráfica).
     global_queue: Espaço reservado para processamentos secundários.
     
     
     sync: Define uma execução síncrona, que impede blocos simultâneos.
     async: Define uma execução assincrona, que permite blocos simultâneos
     
     */



// Não é aconsehado chamar um subprocesso SÍNCRONO na MainQueue, isso pode criar uma espécie de DeadLock, uma espera entro dois processo que se dependen entre si. Um processo espera o término do outro e vice-versa, desta forma nenhum dos dois prosseguem e o App trava. 


/*
 
 // NÃO DEVEMOS FAZER DESTA FORMA
 
    dispatch_sync(dispatch_get_main_queue(), ^{
       
        
        for(int i = 1; i<= 10; i++){
        
            NSLog(@"Processamento A = %i", i);
            
            [NSThread sleepForTimeInterval:1.0];
            
        }
        
        
        
    });
    
    */




dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    
    
    for(int i = 1; i <=10;i++){
        
        
        NSLog(@"Processamento A = %i", i);
        
        [NSThread sleepForTimeInterval:1.0];
        
        
        
        
        // Atualizando a interface
        
        dispatch_async(dispatch_get_main_queue(), ^{
           
            
            self.labelContagem.text = [NSString stringWithFormat:@"%i", i];
            
        });
        
    }
    
});

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
   
    
    for(int i = 1; i <=10;i++){

    
        NSLog(@"Processamento B = %i", i);
        
        [NSThread sleepForTimeInterval:1.0];
    
    }

});


}
@end
