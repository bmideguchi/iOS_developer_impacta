//
//  ViewController.m
//  indicadorDeAtividade
//
//  Created by NoiteA on 24/06/13.
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
    
    //Zerando o progress
    self.meuProgress.progress = 0.0;
    
    
    
    //Propriedade que esconde o activityIndicator quando parado
    self.meuActivityIndicator.hidesWhenStopped = YES;
    
    //Definindo o limite para o stepper
    self.meuStepper.minimumValue = 0.0;
    self.meuStepper.maximumValue = 10.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_meuActivityIndicator release];
    [_meuSwitch release];
    [_meuProgress release];
    [_meuStepper release];
    [super dealloc];
}


#pragma mark - Minhas ações


//Método dosparado quando interagimos com o switch
- (IBAction)alterarSwitch:(UISwitch *)sender {
    
    if (sender.on) {
        //Caso o switch esteja como ON, ativamos o nosso activityIndicator
        [self.meuActivityIndicator startAnimating];
    }
    
    else
        //Caso o switch esteja como OFF, desativamos o nosso activityIndicator
        [self.meuActivityIndicator stopAnimating];
    
    
}



//Método dosparado quando interagimos com o stepper
- (IBAction)alterarStepper:(UIStepper *)sender {
    
    NSLog(@"%.2f", sender.value);
    
    //Como o progress varia de 0 a 1, e declaramos que o stepper varia de 0 a 10, declaramos o sender.value dividido por 10
    self.meuProgress.progress = sender.value/10;
    
}
@end
