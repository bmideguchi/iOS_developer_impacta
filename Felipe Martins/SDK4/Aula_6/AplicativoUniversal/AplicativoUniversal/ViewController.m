//
//  ViewController.m
//  AplicativoUniversal
//
//  Created by Felipe Martins on 23/08/13.
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
    self.textViewiPad.editable = NO;
    self.textViewiPad.text = nil;
    
    
    self.textViewUnica.editable = NO;
    self.textViewUnica.text = nil;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarInformacoes:(UIButton *)sender {
    
    
    if (self.textFieldNome.text.length > 0 && self.textFieldSobrenome.text.length > 0 && self.textFieldEmail.text.length > 0) {
        
        NSString *texto = [NSString stringWithFormat:@"%@\n%@\n%@\n", self.textFieldNome.text, self.textFieldSobrenome.text, self.textFieldEmail.text];
        
        self.textViewUnica.text = texto;
        
        
        
        NSString *texto2 = [NSString stringWithFormat:@"Olá meu nome é %@ %@ e meu e-mail é %@",self.textFieldNome.text, self.textFieldSobrenome.text, self.textFieldEmail.text];
        
        
        self.textViewiPad.text = texto2;
        
        
        
        // tiramos o teclado da tela
        [self becomeFirstResponder];
        
        
        
    }else{
    
    
    
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Digite corretamente os dados antes de prosseguir" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
    
        [alerta show];
        
    
    }
    
    
}




-(BOOL)canBecomeFirstResponder{




    return YES;

}

@end
