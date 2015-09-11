//
//  ViewController.m
//  DesafioLocalNotification
//
//  Created by Felipe Martins on 16/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Ligando o delegate do TextField
    
    self.textFieldMensagem.delegate = self;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ligarNotificacao:(UIButton *)sender {
    
    
    // Verificando se o texto foi digitado
    
    if (self.textFieldMensagem.text.length > 0) {
        
            // Caso o usuário tenha preenchido o campo corretamente
        
        // Criamos uma variável para armazenar o texto
        NSString *mensagem = self.textFieldMensagem.text;
        
        // Criamos nossa notificação
        UILocalNotification *notificacao = [[UILocalNotification alloc]init];
        
        // Setamos o corpo da mensagem da notificação
        [notificacao setAlertBody:mensagem];
        
        // Criamos uma variável para receber o tempo parav o disparo
        float intervalo = self.datePickerUnico.countDownDuration;
        
        // Setamos o tempo para a notificação ser disparada
        [notificacao setFireDate:[NSDate dateWithTimeIntervalSinceNow:intervalo]];
        
        // Setamos o som na notificação
        [notificacao setSoundName:@"som.caf"];
        
        // Acessar a nossa aplicação
        
        UIApplication *meuApp = [UIApplication sharedApplication];
        
        // colocamos a notificação na lista
        
        [meuApp scheduleLocalNotification:notificacao];
        
        
    }else{
        // caso não tenha preenchido o texto
        
    
        // Alertamos o usuário
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Digite a Mesnagem!" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        
        [alerta show];
    
    
    }
    
    
}


// ---------- Rotina para retirar o teclado de cena quando o usuário toca na Tela ------


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{


    [self becomeFirstResponder];


}



-(BOOL)canBecomeFirstResponder{

    return YES;

}





// -----------



-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    
    [textField resignFirstResponder];
    
    return YES;

}




// -------------------------------- // ---------------------------



// Método disparado quando o textField ganha foco (O teclado vai subir)
-(void)textFieldDidBeginEditing:(UITextField *)textField{


    
    [UIView animateWithDuration:0.25 animations:^{
       
        
        
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - 80, self.view.frame.size.width, self.view.frame.size.height);
        
        
        
        
        
    }];
    

    [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];

}

// Método disparado quando o textField perde o foco
-(void)textFieldDidEndEditing:(UITextField *)textField{

    [UIView animateWithDuration:0.25 animations:^{
        
        
        
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + 80, self.view.frame.size.width, self.view.frame.size.height);
        
        
        
        
        
    }];


[[UIApplication sharedApplication]setStatusBarHidden:NO withAnimation:UIStatusBarAnimationSlide];

}


@end
