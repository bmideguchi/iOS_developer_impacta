//
//  ViewController.m
//  UIAlertView
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



#pragma mark - minhas ações

- (IBAction)ativarAlertaSimples:(UIButton *)sender {
    
    //Criando um alertView
    
    //Title - Título do alerta
    //Message - Define a mensagem do alerta
    //Delegate - Liga o delegate do alertView
    //CancelButtonTitle - Recebe uma string e cria um botão com a string recebida
    //Other button titles - Cria botões com títulos passados via strings e separados por vírgula
    
    UIAlertView *alertaSimples = [[UIAlertView alloc]initWithTitle:@"Aviso!" message:@"Este é um alerta simples" delegate:nil cancelButtonTitle:@"Cancelar" otherButtonTitles:@"ok", nil];
    
    //Setando a tag do nosso alerta simples
    //Para distinguir elementos em tela, podemos utilizar uma TAG, uma espécie de "etiqueta" que pode ser resgatada posteriormente.
    alertaSimples.tag = 1;
    
    //Método que apresenta o alertView e tela
    [alertaSimples show];
    
}







- (IBAction)ativarAlertaTexto:(UIButton *)sender {
    
    UIAlertView *alertaComText = [[UIAlertView alloc]initWithTitle:@"Aviso!" message:@"Este é um alerta com entrada de texto" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Beleza", nil];
    
    //Para que o nosso alertView tenha uma entrada de texto, precisamos setar seu style
    alertaComText.alertViewStyle = UIAlertViewStylePlainTextInput;
    
    //Setando uma TAG para nosso alertView
    alertaComText.tag = 2;
    
    //Mostrando o alerta com texto
    [alertaComText show];
}







- (IBAction)ativarAlertaSenha:(UIButton *)sender {
    UIAlertView *alertaComSenha = [[UIAlertView alloc]initWithTitle:@"Alerta" message:@"Digite a senha" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Confirma", nil];
    
    //Setando o styke
    alertaComSenha.alertViewStyle = UIAlertViewStyleSecureTextInput;
    
    //Setando a tag
    alertaComSenha.tag = 3;
    
    //Mostrando o nosso alerta
    [alertaComSenha show];
}







- (IBAction)ativarAlertaLogin:(UIButton *)sender {
    
    UIAlertView *alertaLogin = [[UIAlertView alloc]initWithTitle:@"Atenção!\nFaça seu Login" message:@"INsira seu login e senha" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"OK", nil];
    
    //Setando o style da alert
    alertaLogin.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    
    
    //-------------------------------- COSMÉTICOS -------------------------------------
    
    //Para acessarmos o placeholder da nossa textField que está dentro da alertView
    
    [alertaLogin textFieldAtIndex:0].placeholder = @"E-mail";
    [alertaLogin textFieldAtIndex:1].placeholder = @"Senha";
    
    //Alterando o teclado
    
    [alertaLogin textFieldAtIndex:0].keyboardType = UIKeyboardTypeEmailAddress;
    
    
    //---------------------------------------------------------------------------------
    
    
    //Setando uma tag
    alertaLogin.tag = 4;
    
    //Mostrando a alert
    [alertaLogin show];
    
}







#pragma mark - UIAlertViewDelegate

//Método que roda quando clicamos algum botão em nosso alertView e o mesmo saiu da tela (DidDismiss)
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    
    switch (alertView.tag) {
        case 1:
            //Caso a tag seja 1, estamos no alerta simples
            NSLog(@"Alerta Simples");
            break;
        
        case 2:{
            //Caso a tag seja 2, estamos na alertView com entrada de texto
            //Se o botao for o "1", quer dizer que o "Beleza foi acionado"
            if (buttonIndex == 1) {
                //Este método nos retorna o buttonIndex que é o botão clicado.
                //Como temos uma text field em nosso alert view, podemos criar um elemento do mesmo tipo para receber as informações digitadas.
                UITextField *textDigitado = [alertView textFieldAtIndex:0];
                NSLog(@"Texto Digitado: %@", textDigitado.text);
                break;
            }
            else{
                NSLog(@"Cancelado");
            }
            
        }
            
        case 3:{
            //Caso a tag seja 3, estamos no alerta com senha
            UITextField *textSenha = [alertView textFieldAtIndex:0];
            NSLog(@"A senha ééééé: %@", textSenha.text);
            break;
        }
            
        case 4:{
            //Caso a tag seja 4, estamos na alert com Login e senha
            
            //Resgatamos os textos digitados através das strings
            NSString *login = [alertView textFieldAtIndex:0].text;
            NSString *senha = [alertView textFieldAtIndex:1].text;
            
            NSLog(@"Login: %@", login);
            NSLog(@"Senha: %@", senha);
        }
            
        default:
            break;
    }
    
    
}




@end
