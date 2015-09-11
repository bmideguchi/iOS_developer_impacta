//
//  ViewController.m
//  MessageUI
//
//  Created by Felipe Martins on 12/08/13.
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

- (IBAction)enviarEmail:(UIButton *)sender {
    
    
    // Verificando se o dispositivo pode enviar e-mail
    
    if ([MFMailComposeViewController canSendMail]) {
        // caso o dispositivo esteja apto para enviar e-mail
        
        
        // Criamos o viewController responsável pela tela de envio de e-mails.
        
        MFMailComposeViewController *mailCompose = [[MFMailComposeViewController alloc]init];
        
        
        // -------------------- Métodos que preenchem os campos do e-mail ---------
        
        // Método que define o assunto do e-mail.
        [mailCompose setSubject:@"Currículo - Felipe Martins"];
        
        // Método que define o corpo do e-mail
        [mailCompose setMessageBody:@"<strong><i> Boa noite </strong>, <br><br><br>Gostaria de me candidatar a vaga de Steve Jobs.<br><br>Grato.<br><br>Felipe Martins </i>" isHTML:YES];
      
        
        // Método que define os destinatários
        
        // Criando um array com os destinatários
        NSArray *arrayDestinatarios = @[@"hr@apple.com", @"timcook@apple.com"];
      
        // Adicionando o array de destinários ao nosso mailCompose
        [mailCompose setToRecipients:arrayDestinatarios];
        
        // Ligando o delegate
        mailCompose.mailComposeDelegate = self;
        
        
        // Método que exibe um viewController
        
        [self presentViewController:mailCompose animated:YES completion:nil];
        
        
        
        
    }else{
        // Caso o dispositivo não possa enviar e-mail
    
        // alertamos o usuário
        
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta!" message:@"Seu dispositivo não pode enviar e-mails no momento." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        
        [alerta show];
    
    }
    
    
}


#pragma mark - MFMailComposeViewControllerDelegate

// Método disparado quando o usuário efetua uma ação no controller (envia, fecha, salva em rascunhos...)
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{

    // O parâmetro result concentra as ações possíveis em relação ao e-mail

    switch (result) {
        case MFMailComposeResultSent:
            
            NSLog(@"E-mail enviado com sucesso");
            break;
        case MFMailComposeResultFailed:
            
            NSLog(@"Falha no envio");
            break;
        case MFMailComposeResultCancelled:
            
            NSLog(@"Envio de e-mail cancelado");
            break;
        case MFMailComposeResultSaved:
            
            NSLog(@"Email salvo em rascunhos");
            break;

        default:
            break;
    }
    
    // Retiramos manualmente o nosso mailCompose da tela
    [controller dismissViewControllerAnimated:YES completion:nil];

}


- (IBAction)enviarMensagem:(UIButton *)sender {
    
    
    // Verificamos se o dispositivo esta apto a enviar mensagem
    
    
    if ([MFMessageComposeViewController canSendText]) {
        // Caso o dispositivo esteja apto a enviar mensagens
        
        
        // Criamos um objeto da classe responsável pela criação da tela de mensagens (MMS, SMS, iMessage).
        MFMessageComposeViewController *messageCompose = [[MFMessageComposeViewController alloc]init];
        
        // Método que configura o texto da mensagem
        [messageCompose setBody:@"E awe, Fmz?"];
        
        // Ligando o delegate
        
        messageCompose.messageComposeDelegate = self;
        
        // Exibimos a janela
        
        [self presentViewController:messageCompose animated:YES completion:nil];
     
        
        
        
    }else{
        // caso o dispositivo não esteja apto a enviar mensagens
    
        // alertamos o usuário
        
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta!" message:@"Seu dispositivo não pode enviar mensagens no momento." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
        
        [alerta show];

    
    
    }
    
    
    
    
}

#pragma mark - Métodos de MFMessageComposeViewControllerDelegate

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{

    // Verificamos o result da mensagem

    switch (result) {
        case MessageComposeResultSent:
            
            NSLog(@"Mensagem enviada com sucesso");
            break;
        case MessageComposeResultFailed:
            
            NSLog(@"Falha no envio da Mensagem");
            break;
        case MessageComposeResultCancelled:
            NSLog(@"Mensagem Cancelada");
            break;
        default:
            break;
    }


    // tiramos o controller de nossa tela


    [controller dismissViewControllerAnimated:YES completion:nil];


}

@end
